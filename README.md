# MATH 6600: Methods of Applied Mathematics

This is the main repository of course materials for MATH 6600 at RPI, Fall 2025. The syllabus is posted in the README below. Lecture notes, homework, exams, and supplementary materials will be posted here or linked through Piazza and Gradescope (RCS access only).

> **Course description (from [RPI Catalog](https://catalog.rpi.edu/preview_course_nopop.php?catoid=11&coid=18982))**
>
> _Linear vector spaces; eigenvalues and eigenvectors in discrete systems; eigenvalues and eigenvectors in continuous systems including Sturm-Liouville theory, orthogonal expansions and Fourier series, Green’s functions; elementary theory of nonlinear ODEs including phase plane, stability and bifurcation; calculus of variations. Applications will be drawn from equilibrium and dynamic phenomena in science and engineering._
>
> Prerequisites: differential equations ([MATH 2400](https://catalog.rpi.edu/preview_course_nopop.php?catoid=10&coid=17197)) and advanced calculus ([MATH 4600](https://catalog.rpi.edu/preview_course_nopop.php?catoid=24&coid=52217)).


## Syllabus

**Lectures**: Tuesday/Friday 10–11:50am in LOW 3112.

**Instructor**: Andrew Horning

**Office Hours:** TBD in Amos Eaton 329. 

**Contact:** hornia3@rpi.edu

**Course Tools:** Communicate (announcements, questions, and discussion) through [Piazza](https://piazza.com/). View and submit homework assignments on [Gradescope](https://www.gradescope.com/). The mid-term will be in-class and the final project will be submitted on Gradescope.

**Grading:** 40% homework (due weekly TBD), 30% mid-term (TBD), 30% final project (December 12). Problem sets must be submitted to Gradescope before the deadline on the due date. Regrade requests can be made on Gradescope within one week of return.

**Collaboration and Academic Integrity:** To maximize your learning objectives, reserve time to work on each problem independently before discussing it with your classmates. Always write up the solution on your own and acknowledge your collaborators. Copying solutions directly from peers, books, internet sources, or AI tools is strictly prohibited.

**Accomodations and Disability Services:** If you have approved accommodations through the Office of Disability Services for Students ([DSS](https://studenthealth.rpi.edu/list-services/disability-student-services)), please reach out to meet with me early in the semester. We are committed to equal access for all students and will be happy to facilitate the use of approved accommodations. 

## Final Project

Instead of a final exam, write an 8-10 page report that reviews either a "method" (e.g., matched perturbation expansions) or a "problem" (e.g., elliptic partial differential equations on the disk) in applied mathematics. Your report should both include:
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

A list of possible candidates for project topics will be assembled below as the semester progresses, with references to get you started.
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

- Homework 1 is due by 5pm on Friday, September 5. 

## Lecture summaries

### Lecture 1

- methods of applied mathematics
- linear algebra with functions
- infinite-dimensional vector spaces


