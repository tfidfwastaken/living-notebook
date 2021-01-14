(ns viz.core
  (:require [quil.core :as q]
            [quil.middleware :as middleware]))

(enable-console-print!)
(def body (. js/document querySelector ".main-side"))
(def w (.-clientWidth body))
(def h w)

#_(def palette-old
  {:name "notebook"
   :background [250 249 246]
   :colors [[86 130 89] [130 48 56] [31 54 61] [204 139 134]]})

(def palette
  {:name "notebook"
   :background [250 249 246]
   :colors [[100, 104, 100] [155, 125, 136] [57, 30, 14] [175, 118, 100]]})

(defn noise-zoom [] (q/random 0.002 0.0005))

(defn particle [id]
  {:id         id
   :vx         1
   :vy         1
   :size       3
   :direction  0
   :x          (q/random w)
   :y          (q/random h)
   :color      (rand-nth (:colors palette))})

(defn sketch-setup []
  (map particle (range 0 1000)))

(defn new-pos [current δ max]
  (mod (+ current δ) max))

(defn new-v
  ([current δ] (/ (+ current δ) 2))
  ([current δ max] (/ (+ current δ) max)))

(defn new-direction [x y z]
  (* 2 Math/PI
     (+ (q/noise (* x (noise-zoom)) (* y (noise-zoom)))
        (* (- x z) (q/noise (* x (noise-zoom)) (* y (noise-zoom)) (* z (noise-zoom)))))))

(defn sketch-update [particles]
  (map #(assoc %
               :x (new-pos (:x %) (:vx %) w)
               :y (new-pos (:y %) (:vy %) h)
               :direction (new-direction (:x %) (:y %) (:id %))
               :vx (new-v (:vx %) (Math/cos (:direction %)))
               :vy (new-v (:vy %) (Math/sin (:direction %))))
       particles))

(defn sketch-draw [particles]
  (when (= 500 (q/frame-count)) (q/no-loop))
  (defn distance-from-edge [p]
    (+ (q/abs (- (/ w 2) (:x p))) (q/abs (- (/ h 2) (:y p)))))
  (q/no-stroke)
  ;;(pr (map distance-from-edge (take 10 particles)))
  (doseq [p particles]
    (apply q/fill (conj (:color p)
                        (* 1 (/ (+ w h) (* (distance-from-edge p) 0.85)))))
    (q/ellipse (:x p) (:y p) (:size p) (:size p))))

(defn create [canvas]
  (q/sketch
    :host canvas
    :size [w h]
    :draw #'sketch-draw
    :setup #'sketch-setup
    :update #'sketch-update
    :middleware [middleware/fun-mode]
    :settings (fn []
                ; (q/random-seed 2)
                (q/noise-seed 2))))

(defonce sketch (create "sketch"))
