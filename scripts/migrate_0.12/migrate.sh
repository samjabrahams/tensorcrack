#!/usr/bin/env bash
default="tf\."
prefix=${1:-$default}
declare -a regexp=(
                   "train\.SummaryWriter","summary\.FileWriter"
                   "scalar_summary","summary\.scalar"
                   "histogram_summary","summary\.histogram"
                   "audio_summary","summary\.audio"
                   "image_summary","summary\.image"
                   "merge_summary","summary\.merge"
                   "merge_all_summaries","summary\.merge_all"
                   "image\.per_image_whitening","image\.per_image_standardization"
                   "all_variables","global_variables"
                   "VARIABLES","GLOBAL_VARIABLES"
                   "initialize_all_variables","global_variable_initializer"
                   "batch_matrix_diag","matrix_diag"
                   "batch_matrix_diag_parg", "matrix_diag_part"
                   "batch_band_part","band_part"
                   "batch_set_diag","set_diag"
                   "batch_matrix_transpose","matrix_transpose"
                   "batch_matrix_determinant","matrix_determinant"
                   "batch_matrix_inverse","matrix_inverse"
                   "batch_cholesky","cholesky"
                   "batch_cholesky_solve","cholesky_solve"
                   "batch_matrix_solve","matrix_solve"
                   "batch_matrix_triangular_solve","matrix_triangular_solve"
                   "batch_matrix_solve_ls","matrix_solve_ls"
                   "batch_self_adjoint_eig","self_adjoint_eig"
                   "batch_self_adjoint_eigvals","self_adjoint_eigvals"
                   "batch_svd","svd"
                   "batch_fft","fft"
                   "batch_ifft","ifft"
                   "batch_ifft2d","ifft2d"
                   "batch_ifft2d","ifft2d"
                   "batch_fft3d","fft3d"
                   "batch_ifft3d","ifft3d"
                  )
for i in "${regexp[@]}"; do
    IFS=","
    set -- $i
    grep --exclude "migrate.sh" -Rl $1 | xargs sed -i "s/$prefix$1/$prefix$2/g"
done