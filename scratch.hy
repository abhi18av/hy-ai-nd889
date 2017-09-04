 (defn inc-decorator [func]
   (fn [value-1 value-2] (func (+ value-1 1) (+ value-2 1))))


 (defn inc2-decorator [func]
   (fn [value-1 value-2] (func (+ value-1 2) (+ value-2 2))))


(with-decorator inc-decorator
  (defn addition [a b] (+ a b)))

(addition 1 1)

 (with-decorator inc2-decorator inc-decorator
   (defn addition [a b] (+ a b)))

(addition 1 1)
