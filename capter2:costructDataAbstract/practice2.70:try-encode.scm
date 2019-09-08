(define pairs '(('A 2)
               ('NA 16)
               ('BOOM 1)
               ('SHA 3)
               ('GET 2)
               ('YIP 9)
               ('JOB 2)
               ('WAH 1)))

(define huff-tree (generate-huffman-tree pairs))



; ((leaf 'NA 16)
;   ((leaf 'YIP 9)
;     (((leaf 'A 2)
;        ((leaf 'WAH 1) (leaf 'BOOM 1) ('WAH 'BOOM) 2)
;        ('A 'WAH 'BOOM)
;        4)
;       ((leaf 'SHA 3)
;         ((leaf 'JOB 2) (leaf 'GET 2) ('JOB 'GET) 4)
;         ('SHA 'JOB 'GET)
;         7)
;       ('A 'WAH 'BOOM 'SHA 'JOB 'GET)
;       11)
;     ('YIP 'A 'WAH 'BOOM 'SHA 'JOB 'GET)
;     20)
;   ('NA 'YIP 'A 'WAH 'BOOM 'SHA 'JOB 'GET)
;   36)

(define message '((GET A JOB)
                  (SHA NA NA NA NA NA NA NA NA)
                  (GET A JOB)
                  (SHA NA NA NA NA NA NA NA NA)
                  (WAH YIP YIP YIP YIP YIP YIP YIP YIP YIP)
                  (SHA BOOM)))