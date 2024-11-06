# MATH 6600: Methods of Applied Mathematics

This is the main repository of course materials for MATH 6600 at RPI, Fall 2024. The syllabus is posted in the README below. Lecture notes, homework, exams, and supplementary materials will be posted here or linked through Piazza and Gradescope (RCS access only).

> **Course description (from [RPI Catalog](https://catalog.rpi.edu/preview_course_nopop.php?catoid=11&coid=18982))**
>
> _Linear vector spaces; eigenvalues and eigenvectors in discrete systems; eigenvalues and eigenvectors in continuous systems including Sturm-Liouville theory, orthogonal expansions and Fourier series, Green’s functions; elementary theory of nonlinear ODEs including phase plane, stability and bifurcation; calculus of variations. Applications will be drawn from equilibrium and dynamic phenomena in science and engineering._
>
> Prerequisites: differential equations ([MATH 2400](https://catalog.rpi.edu/preview_course_nopop.php?catoid=10&coid=17197)) and advanced calculus ([MATH 4600](https://catalog.rpi.edu/preview_course_nopop.php?catoid=24&coid=52217)).


## Syllabus

**Lectures**: Monday/Thursday 10–11:50am in Carnegie 206.

**Instructor**: Andrew Horning

**Office Hours:** Monday and Thursday, 12:30-1:30pm in Amos Eaton 329. 

(Due to holiday, office hours will take place Tuesday 09/03 and not Monday 09/02.) 

**Contact:** hornia3@rpi.edu

**Course Tools:** Communicate (announcements, questions, and discussion) through [Piazza](https://piazza.com/). View and submit homework assignments on [Gradescope](https://www.gradescope.com/). The mid-term will be in-class and the final project will be submitted on Gradescope.

**Grading:** 50% homework (due weekly on Tuesday at 5pm), 25% mid-term (October 17), 25% final project (TBD). Problem sets must be submitted to Gradescope before the deadline on the due date. Regrade requests can be made on Gradescope within one week of the due date.

**Collaboration and Academic Integrity:** To maximize your learning objectives, reserve time to work on each problem independently before discussing it with your classmates. Always write up the solution on your own and acknowledge your collaborators. Copying solutions directly from peers, books, internet sources, or AI tools is strictly prohibited.

**Accomodations and Disability Services:** If you have approved accommodations through the Office of Disability Services for Students ([DSS](https://studenthealth.rpi.edu/list-services/disability-student-services)), please reach out to meet with me early in the semester. We are committed to equal access for all students and will be happy to facilitate the use of approved accommodations. 

## Final Project

Instead of a final exam, write an 8-10 page report that reviews either a "method" (e.g., principle component analysis) or a "problem" (e.g., parabolic partial differential equations) in applied mathematics. Your report should both include:
>
> *Review*: Why is this method or problem important, what is its history, and what are
the important publications and references? (A comprehensive bibliography is
expected: not just the sources you happened to consult, but a complete set of
sources you would recommend that a reader consult to learn a fuller picture.)
>
> *Description*: A concise mathematical description of the problem or method you are studying. If you are focusing on a *method*, you should clearly describe its scope: what problems can it be applied to? What are its strengths and limitations? If you are studying a *problem*, you should discuss key properties: what is the key structure/behavior in the problem and its solution? What are the primary methods used to make progress solving or analyzing this problem?
> 
> *Application*: Illustrate the key strengths, limitations, and characteristics of your *method* by working through a concrete instance of a problem OR study your *problem* by applying one or more methods to analyze and (if possible) construct solutions or approximate solutions.
>
The report should be written in clear and concise language at a level that is accessible to your fellow classmates. Graphical illustrations of key concepts are highly encouraged when possible. Numerical experiments are encouraged but not required. 

Below are some possible candidates for project topics, with references to get you started.
* Randomized NLA: Fast methods for solving problems in linear algebra using randomized algorithms.
    - [Classic randomized SVD](https://arxiv.org/abs/0909.4061)
    - [Randomized trace estimation](https://arxiv.org/abs/2010.09649)
    - [Hierarchical low-rank matrices](https://arxiv.org/abs/1001.0149)
* Operator learning: Learn the Green's function of a partial differential equation from input-output data using, e.g., SVD of Green's function.
    - [Elliptic PDEs](https://arxiv.org/abs/2102.00491)
    - [Parabolic PDEs](https://arxiv.org/abs/2204.12789)
    - [Neural network approach](https://arxiv.org/abs/2210.16016)
    - [Random Features Model](https://arxiv.org/abs/2005.10224)
* Principle Component Analysis (PCA): extensions of PCA and Kernel PCA that are robust to noise, promote sparsity, etc.
    - [Kernel PCA](https://ieeexplore.ieee.org/abstract/document/6790375)
    - [Robust PCA](https://arxiv.org/abs/0912.3599)
* Dynamic Mode Decomposition (DMD): A PCA-like algorithm for data with a time component (many variants like piDMD, eDMD, mpDMD).
    - [The DMD Textbook](https://epubs.siam.org/doi/book/10.1137/1.9781611974508)
    - [Physics-informed DMD](https://arxiv.org/abs/2112.04307)
* Applied Koopman Theory: Operator framework for analyzing dynamical systems from data. Often applied in tandem with DMD algorithms for data-driven tasks.
    - [Modern Koopman theory](https://arxiv.org/abs/2102.12086)
    - [Applied Koopmanism](https://arxiv.org/abs/1206.3164)
* Kernel machines and reproducing kernel Hilbert spaces in machine learning.
    - [Kernel Methods in ML](https://arxiv.org/abs/math/0701907)



## Assignments

- [Homework 1](https://www.gradescope.com/courses/845790) is due by 5pm on Friday, September 6. ([Solutions](https://piazza.com/class/m0e05wghx8x1lt/post/16))
- [Homework 2](https://www.gradescope.com/courses/845790) is due by 5pm on Tuesday, September 17. ([Solutions](https://piazza.com/class/m0e05wghx8x1lt/post/22))
- [Homework 3](https://www.gradescope.com/courses/845790) is due by 5pm on Tuesday, September 24. ([Solutions](https://piazza.com/class/m0e05wghx8x1lt/post/24))
- [Homework 4](https://www.gradescope.com/courses/845790) is due by 5pm on Tuesday, October 1. ([Solutions](https://piazza.com/class/m0e05wghx8x1lt/post/28))
- [Homework 5](https://www.gradescope.com/courses/845790) is due by 5pm on Tuesday, October 15. ([Solutions](https://piazza.com/class/m0e05wghx8x1lt/post/31))
- [Homework 6](https://www.gradescope.com/courses/845790) is due by 5pm on Tuesday, October 29.
- [Homework 7](https://www.gradescope.com/courses/845790) is due by 5pm on Tuesday, November 5.
- [Homework 8](https://www.gradescope.com/courses/845790) is due by 5pm on Tuesday, November 12.

## Lecture summaries

### Lecture 1

- Models, maps, and methods in applied mathematics
- Vector spaces of functions
- Norms, inner products, and orthogonality

[Notes](notes/lecture_01.pdf)

### Lecture 2

- Orthogonal bases and Gram-Schmidt orthogonalization
- From monomials to Legendre polynomials
- Coordinate transformations and the Gram matrix

[Notes](notes/lecture_02.pdf) | [Chebfun](https://www.chebfun.org/)

### Lecture 3

- Matrices and quasimatrices
- Linear transformations
- The matrix of a linear transformation

[Notes](notes/lecture_03.pdf) | Gram matrices in [action](https://arxiv.org/abs/2209.02244)

### Lecture 4

- Linear equations
- Existence, uniqueness, and sensitivity
- Fundamental subspaces and adjoint transformations

[Notes](notes/lecture_04.pdf)

### Lecture 5

- The four fundamental subspaces
- The Fredholm alternative (n-dimensions)
- Hilbert spaces and completeness

[Notes](notes/lecture_05.pdf) | Review the [four subspaces with Gil Strang](https://www.youtube.com/watch?v=nHlE7EgJFds)

### Lecture 6

- Separable Hilbert spaces and bases
- Square integrable functions and smooth subspaces
- Differentiation and integration in L^2(Omega)

[Notes](notes/lecture_06.pdf)

### Lecture 7

- Bounded operators on Hilbert spaces
- Operators with bounded inverse
- From differential to integral equations

[Notes](notes/lecture_07.pdf)

### Lecture 8

- Criteria for a bounded inverse
- Well-posed integral equations
- Hilbert-Schmidt operators

[Notes](notes/lecture_08.pdf)

### Lecture 9

- More about Hilbert-Schmidt operators
- The SVD of a matrix
- The SVD of a H-S operator

[Notes](notes/lecture_09.pdf) | [Learning Hilbert-Schmidt kernels from data](https://arxiv.org/abs/2102.00491)

### Lecture 10

- "Low-rank approximation" of H-S operators
- Fredholm alternative for H-S operators
- The H-S spectral theorem (self-adjoint)

[Notes](notes/lecture_10.pdf) | [Singular value expansions for indefinite kernels](https://arxiv.org/abs/2409.16453v1)

### Lecture 11

- Self-adjoint (SA) kernels
- Eigenvalue expansion of SA kernel
- Principle component analysis (PCA)

[Notes](notes/lecture_11.pdf)

### Lecture 12

- Covariance and principal components
- Directions of maximal variance
- Min-max characterizations of eigenpairs

[Notes](notes/lecture_12.pdf)

### Lecture 13

- Practical aspects of PCA
- Sample covariance matrix
- The SVD of the data matrix

[Notes](notes/lecture_13.pdf) | [Demo](notes/pca_demo.m)

### Lecture 14

- Limitations of PCA
- Large nonlinear feature maps
- Kernel PCA and Mercer's theorem

[Notes](notes/lecture_14.pdf) | [Demo](notes/kpca_demo.m) | [Further Reading](notes/kernelPCA.pdf)

## Lecture 15

- Theory of compact linear operators (summary)
- Unbounded operators and the resolvent
- Differential operators with compact resolvent

[Notes](notes/lecture_15.pdf)

## Lecture 16

- Resolvent set and spectrum
- Properties of the resolvent
- Spectral theorem for operators with compact resolvent

[Notes](notes/lecture_16.pdf)

### Lecture 17

- Regular Sturm-Liouville problems
- Singular Sturm-Liouville problems
- Polynomial and series solutions

[Notes](notes/lecture_17.pdf)
