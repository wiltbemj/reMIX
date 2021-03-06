module mixtypes
  use mixdefs

  implicit none

  type Params_T
     ! place holder for model parameters
  end type Params_T

  type State_T
     real(mix_real), dimension(:,:,:),allocatable :: Vars
  end type State_T

  type Grid_T
     integer :: Np, Nt
     
     real(mix_real), dimension(:,:), allocatable :: x,y,t,p
     real(mix_real), dimension(:,:), allocatable :: dt,dp
     real(mix_real), dimension(:,:), allocatable :: ft,fp
     real(mix_real), dimension(:,:), allocatable :: dtdt,dpdp
     real(mix_real), dimension(:,:), allocatable :: cosd      
  end type Grid_T

  type Solver_T
     real(mix_real), dimension(:), allocatable :: RHS,data
     integer(kind=8),dimension(:), allocatable :: II,JJ,rowI
     real(mix_real), dimension(:,:), allocatable :: F11,F22,F12 ! (assuming F21=-F12)
     integer :: nnz  ! number of non-zeros
  end type Solver_T
end module mixtypes
