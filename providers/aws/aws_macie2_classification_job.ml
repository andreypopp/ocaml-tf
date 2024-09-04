(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_job_definition__bucket_criteria__excludes__and__simple_criterion = {
  comparator : string prop option; [@option]
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__bucket_criteria__excludes__and__simple_criterion) ->
  ()

let yojson_of_s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    =
  (function
   | { comparator = v_comparator; key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__excludes__and__simple_criterion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__bucket_criteria__excludes__and__simple_criterion

[@@@deriving.end]

type s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values = {
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values) ->
  ()

let yojson_of_s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values

[@@@deriving.end]

type s3_job_definition__bucket_criteria__excludes__and__tag_criterion = {
  comparator : string prop option; [@option]
  tag_values :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__bucket_criteria__excludes__and__tag_criterion) ->
  ()

let yojson_of_s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    =
  (function
   | { comparator = v_comparator; tag_values = v_tag_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values)
               v_tag_values
           in
           let bnd = "tag_values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__excludes__and__tag_criterion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__bucket_criteria__excludes__and__tag_criterion

[@@@deriving.end]

type s3_job_definition__bucket_criteria__excludes__and = {
  simple_criterion :
    s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_criterion :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : s3_job_definition__bucket_criteria__excludes__and) -> ()

let yojson_of_s3_job_definition__bucket_criteria__excludes__and =
  (function
   | {
       simple_criterion = v_simple_criterion;
       tag_criterion = v_tag_criterion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_criterion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__excludes__and__tag_criterion)
               v_tag_criterion
           in
           let bnd = "tag_criterion", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_simple_criterion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__excludes__and__simple_criterion)
               v_simple_criterion
           in
           let bnd = "simple_criterion", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__excludes__and ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__bucket_criteria__excludes__and

[@@@deriving.end]

type s3_job_definition__bucket_criteria__excludes = {
  and_ : s3_job_definition__bucket_criteria__excludes__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__bucket_criteria__excludes) -> ()

let yojson_of_s3_job_definition__bucket_criteria__excludes =
  (function
   | { and_ = v_and_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__excludes__and)
               v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__excludes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__bucket_criteria__excludes

[@@@deriving.end]

type s3_job_definition__bucket_criteria__includes__and__simple_criterion = {
  comparator : string prop option; [@option]
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__bucket_criteria__includes__and__simple_criterion) ->
  ()

let yojson_of_s3_job_definition__bucket_criteria__includes__and__simple_criterion
    =
  (function
   | { comparator = v_comparator; key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__includes__and__simple_criterion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__bucket_criteria__includes__and__simple_criterion

[@@@deriving.end]

type s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values = {
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values) ->
  ()

let yojson_of_s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values

[@@@deriving.end]

type s3_job_definition__bucket_criteria__includes__and__tag_criterion = {
  comparator : string prop option; [@option]
  tag_values :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__bucket_criteria__includes__and__tag_criterion) ->
  ()

let yojson_of_s3_job_definition__bucket_criteria__includes__and__tag_criterion
    =
  (function
   | { comparator = v_comparator; tag_values = v_tag_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values)
               v_tag_values
           in
           let bnd = "tag_values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__includes__and__tag_criterion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__bucket_criteria__includes__and__tag_criterion

[@@@deriving.end]

type s3_job_definition__bucket_criteria__includes__and = {
  simple_criterion :
    s3_job_definition__bucket_criteria__includes__and__simple_criterion
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_criterion :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : s3_job_definition__bucket_criteria__includes__and) -> ()

let yojson_of_s3_job_definition__bucket_criteria__includes__and =
  (function
   | {
       simple_criterion = v_simple_criterion;
       tag_criterion = v_tag_criterion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_criterion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__includes__and__tag_criterion)
               v_tag_criterion
           in
           let bnd = "tag_criterion", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_simple_criterion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__includes__and__simple_criterion)
               v_simple_criterion
           in
           let bnd = "simple_criterion", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__includes__and ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__bucket_criteria__includes__and

[@@@deriving.end]

type s3_job_definition__bucket_criteria__includes = {
  and_ : s3_job_definition__bucket_criteria__includes__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__bucket_criteria__includes) -> ()

let yojson_of_s3_job_definition__bucket_criteria__includes =
  (function
   | { and_ = v_and_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__includes__and)
               v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria__includes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__bucket_criteria__includes

[@@@deriving.end]

type s3_job_definition__bucket_criteria = {
  excludes : s3_job_definition__bucket_criteria__excludes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  includes : s3_job_definition__bucket_criteria__includes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__bucket_criteria) -> ()

let yojson_of_s3_job_definition__bucket_criteria =
  (function
   | { excludes = v_excludes; includes = v_includes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_includes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__includes)
               v_includes
           in
           let bnd = "includes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excludes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria__excludes)
               v_excludes
           in
           let bnd = "excludes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__bucket_criteria

[@@@deriving.end]

type s3_job_definition__bucket_definitions = {
  account_id : string prop;
  buckets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__bucket_definitions) -> ()

let yojson_of_s3_job_definition__bucket_definitions =
  (function
   | { account_id = v_account_id; buckets = v_buckets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_buckets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_buckets
           in
           let bnd = "buckets", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : s3_job_definition__bucket_definitions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__bucket_definitions

[@@@deriving.end]

type s3_job_definition__scoping__excludes__and__simple_scope_term = {
  comparator : string prop option; [@option]
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__scoping__excludes__and__simple_scope_term) ->
  ()

let yojson_of_s3_job_definition__scoping__excludes__and__simple_scope_term
    =
  (function
   | { comparator = v_comparator; key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__excludes__and__simple_scope_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__scoping__excludes__and__simple_scope_term

[@@@deriving.end]

type s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values = {
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values) ->
  ()

let yojson_of_s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values

[@@@deriving.end]

type s3_job_definition__scoping__excludes__and__tag_scope_term = {
  comparator : string prop option; [@option]
  key : string prop option; [@option]
  target : string prop option; [@option]
  tag_values :
    s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : s3_job_definition__scoping__excludes__and__tag_scope_term) ->
  ()

let yojson_of_s3_job_definition__scoping__excludes__and__tag_scope_term
    =
  (function
   | {
       comparator = v_comparator;
       key = v_key;
       target = v_target;
       tag_values = v_tag_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values)
               v_tag_values
           in
           let bnd = "tag_values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__excludes__and__tag_scope_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__scoping__excludes__and__tag_scope_term

[@@@deriving.end]

type s3_job_definition__scoping__excludes__and = {
  simple_scope_term :
    s3_job_definition__scoping__excludes__and__simple_scope_term list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_scope_term :
    s3_job_definition__scoping__excludes__and__tag_scope_term list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__scoping__excludes__and) -> ()

let yojson_of_s3_job_definition__scoping__excludes__and =
  (function
   | {
       simple_scope_term = v_simple_scope_term;
       tag_scope_term = v_tag_scope_term;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_scope_term then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__excludes__and__tag_scope_term)
               v_tag_scope_term
           in
           let bnd = "tag_scope_term", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_simple_scope_term then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__excludes__and__simple_scope_term)
               v_simple_scope_term
           in
           let bnd = "simple_scope_term", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__excludes__and ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__scoping__excludes__and

[@@@deriving.end]

type s3_job_definition__scoping__excludes = {
  and_ : s3_job_definition__scoping__excludes__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__scoping__excludes) -> ()

let yojson_of_s3_job_definition__scoping__excludes =
  (function
   | { and_ = v_and_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__excludes__and)
               v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__excludes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__scoping__excludes

[@@@deriving.end]

type s3_job_definition__scoping__includes__and__simple_scope_term = {
  comparator : string prop option; [@option]
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__scoping__includes__and__simple_scope_term) ->
  ()

let yojson_of_s3_job_definition__scoping__includes__and__simple_scope_term
    =
  (function
   | { comparator = v_comparator; key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__includes__and__simple_scope_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__scoping__includes__and__simple_scope_term

[@@@deriving.end]

type s3_job_definition__scoping__includes__and__tag_scope_term__tag_values = {
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       s3_job_definition__scoping__includes__and__tag_scope_term__tag_values) ->
  ()

let yojson_of_s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__includes__and__tag_scope_term__tag_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__scoping__includes__and__tag_scope_term__tag_values

[@@@deriving.end]

type s3_job_definition__scoping__includes__and__tag_scope_term = {
  comparator : string prop option; [@option]
  key : string prop option; [@option]
  target : string prop option; [@option]
  tag_values :
    s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : s3_job_definition__scoping__includes__and__tag_scope_term) ->
  ()

let yojson_of_s3_job_definition__scoping__includes__and__tag_scope_term
    =
  (function
   | {
       comparator = v_comparator;
       key = v_key;
       target = v_target;
       tag_values = v_tag_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__includes__and__tag_scope_term__tag_values)
               v_tag_values
           in
           let bnd = "tag_values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comparator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__includes__and__tag_scope_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_s3_job_definition__scoping__includes__and__tag_scope_term

[@@@deriving.end]

type s3_job_definition__scoping__includes__and = {
  simple_scope_term :
    s3_job_definition__scoping__includes__and__simple_scope_term list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_scope_term :
    s3_job_definition__scoping__includes__and__tag_scope_term list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__scoping__includes__and) -> ()

let yojson_of_s3_job_definition__scoping__includes__and =
  (function
   | {
       simple_scope_term = v_simple_scope_term;
       tag_scope_term = v_tag_scope_term;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_scope_term then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__includes__and__tag_scope_term)
               v_tag_scope_term
           in
           let bnd = "tag_scope_term", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_simple_scope_term then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__includes__and__simple_scope_term)
               v_simple_scope_term
           in
           let bnd = "simple_scope_term", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__includes__and ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__scoping__includes__and

[@@@deriving.end]

type s3_job_definition__scoping__includes = {
  and_ : s3_job_definition__scoping__includes__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__scoping__includes) -> ()

let yojson_of_s3_job_definition__scoping__includes =
  (function
   | { and_ = v_and_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__includes__and)
               v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping__includes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__scoping__includes

[@@@deriving.end]

type s3_job_definition__scoping = {
  excludes : s3_job_definition__scoping__excludes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  includes : s3_job_definition__scoping__includes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition__scoping) -> ()

let yojson_of_s3_job_definition__scoping =
  (function
   | { excludes = v_excludes; includes = v_includes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_includes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__includes)
               v_includes
           in
           let bnd = "includes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excludes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__scoping__excludes)
               v_excludes
           in
           let bnd = "excludes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition__scoping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition__scoping

[@@@deriving.end]

type s3_job_definition = {
  bucket_criteria : s3_job_definition__bucket_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bucket_definitions : s3_job_definition__bucket_definitions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scoping : s3_job_definition__scoping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_job_definition) -> ()

let yojson_of_s3_job_definition =
  (function
   | {
       bucket_criteria = v_bucket_criteria;
       bucket_definitions = v_bucket_definitions;
       scoping = v_scoping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scoping then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3_job_definition__scoping)
               v_scoping
           in
           let bnd = "scoping", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bucket_definitions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_definitions)
               v_bucket_definitions
           in
           let bnd = "bucket_definitions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bucket_criteria then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_job_definition__bucket_criteria)
               v_bucket_criteria
           in
           let bnd = "bucket_criteria", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3_job_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_job_definition

[@@@deriving.end]

type schedule_frequency = {
  daily_schedule : bool prop option; [@option]
  monthly_schedule : float prop option; [@option]
  weekly_schedule : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule_frequency) -> ()

let yojson_of_schedule_frequency =
  (function
   | {
       daily_schedule = v_daily_schedule;
       monthly_schedule = v_monthly_schedule;
       weekly_schedule = v_weekly_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weekly_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weekly_schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monthly_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "monthly_schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_daily_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "daily_schedule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule_frequency -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule_frequency

[@@@deriving.end]

type user_paused_details = {
  job_expires_at : string prop;
  job_imminent_expiration_health_event_arn : string prop;
  job_paused_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_paused_details) -> ()

let yojson_of_user_paused_details =
  (function
   | {
       job_expires_at = v_job_expires_at;
       job_imminent_expiration_health_event_arn =
         v_job_imminent_expiration_health_event_arn;
       job_paused_at = v_job_paused_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_paused_at in
         ("job_paused_at", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_job_imminent_expiration_health_event_arn
         in
         ("job_imminent_expiration_health_event_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_job_expires_at
         in
         ("job_expires_at", arg) :: bnds
       in
       `Assoc bnds
    : user_paused_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_paused_details

[@@@deriving.end]

type aws_macie2_classification_job = {
  custom_data_identifier_ids : string prop list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  initial_run : bool prop option; [@option]
  job_status : string prop option; [@option]
  job_type : string prop;
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  sampling_percentage : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  s3_job_definition : s3_job_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schedule_frequency : schedule_frequency list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_macie2_classification_job) -> ()

let yojson_of_aws_macie2_classification_job =
  (function
   | {
       custom_data_identifier_ids = v_custom_data_identifier_ids;
       description = v_description;
       id = v_id;
       initial_run = v_initial_run;
       job_status = v_job_status;
       job_type = v_job_type;
       name = v_name;
       name_prefix = v_name_prefix;
       sampling_percentage = v_sampling_percentage;
       tags = v_tags;
       tags_all = v_tags_all;
       s3_job_definition = v_s3_job_definition;
       schedule_frequency = v_schedule_frequency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule_frequency then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule_frequency)
               v_schedule_frequency
           in
           let bnd = "schedule_frequency", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_job_definition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3_job_definition)
               v_s3_job_definition
           in
           let bnd = "s3_job_definition", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sampling_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_type in
         ("job_type", arg) :: bnds
       in
       let bnds =
         match v_job_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_run with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "initial_run", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_data_identifier_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_data_identifier_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_macie2_classification_job ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_macie2_classification_job

[@@@deriving.end]

let s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    ?comparator ?key ?values () :
    s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    =
  { comparator; key; values }

let s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    ?key ?value () :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    =
  { key; value }

let s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    ?comparator ?(tag_values = []) () :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    =
  { comparator; tag_values }

let s3_job_definition__bucket_criteria__excludes__and
    ?(simple_criterion = []) ?(tag_criterion = []) () :
    s3_job_definition__bucket_criteria__excludes__and =
  { simple_criterion; tag_criterion }

let s3_job_definition__bucket_criteria__excludes ?(and_ = []) () :
    s3_job_definition__bucket_criteria__excludes =
  { and_ }

let s3_job_definition__bucket_criteria__includes__and__simple_criterion
    ?comparator ?key ?values () :
    s3_job_definition__bucket_criteria__includes__and__simple_criterion
    =
  { comparator; key; values }

let s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    ?key ?value () :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    =
  { key; value }

let s3_job_definition__bucket_criteria__includes__and__tag_criterion
    ?comparator ?(tag_values = []) () :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion
    =
  { comparator; tag_values }

let s3_job_definition__bucket_criteria__includes__and
    ?(simple_criterion = []) ?(tag_criterion = []) () :
    s3_job_definition__bucket_criteria__includes__and =
  { simple_criterion; tag_criterion }

let s3_job_definition__bucket_criteria__includes ?(and_ = []) () :
    s3_job_definition__bucket_criteria__includes =
  { and_ }

let s3_job_definition__bucket_criteria ?(excludes = [])
    ?(includes = []) () : s3_job_definition__bucket_criteria =
  { excludes; includes }

let s3_job_definition__bucket_definitions ~account_id ~buckets () :
    s3_job_definition__bucket_definitions =
  { account_id; buckets }

let s3_job_definition__scoping__excludes__and__simple_scope_term
    ?comparator ?key ?values () :
    s3_job_definition__scoping__excludes__and__simple_scope_term =
  { comparator; key; values }

let s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    ?key ?value () :
    s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    =
  { key; value }

let s3_job_definition__scoping__excludes__and__tag_scope_term
    ?comparator ?key ?target ?(tag_values = []) () :
    s3_job_definition__scoping__excludes__and__tag_scope_term =
  { comparator; key; target; tag_values }

let s3_job_definition__scoping__excludes__and
    ?(simple_scope_term = []) ?(tag_scope_term = []) () :
    s3_job_definition__scoping__excludes__and =
  { simple_scope_term; tag_scope_term }

let s3_job_definition__scoping__excludes ?(and_ = []) () :
    s3_job_definition__scoping__excludes =
  { and_ }

let s3_job_definition__scoping__includes__and__simple_scope_term
    ?comparator ?key ?values () :
    s3_job_definition__scoping__includes__and__simple_scope_term =
  { comparator; key; values }

let s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    ?key ?value () :
    s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    =
  { key; value }

let s3_job_definition__scoping__includes__and__tag_scope_term
    ?comparator ?key ?target ?(tag_values = []) () :
    s3_job_definition__scoping__includes__and__tag_scope_term =
  { comparator; key; target; tag_values }

let s3_job_definition__scoping__includes__and
    ?(simple_scope_term = []) ?(tag_scope_term = []) () :
    s3_job_definition__scoping__includes__and =
  { simple_scope_term; tag_scope_term }

let s3_job_definition__scoping__includes ?(and_ = []) () :
    s3_job_definition__scoping__includes =
  { and_ }

let s3_job_definition__scoping ?(excludes = []) ?(includes = []) () :
    s3_job_definition__scoping =
  { excludes; includes }

let s3_job_definition ?(bucket_criteria = [])
    ?(bucket_definitions = []) ?(scoping = []) () : s3_job_definition
    =
  { bucket_criteria; bucket_definitions; scoping }

let schedule_frequency ?daily_schedule ?monthly_schedule
    ?weekly_schedule () : schedule_frequency =
  { daily_schedule; monthly_schedule; weekly_schedule }

let aws_macie2_classification_job ?custom_data_identifier_ids
    ?description ?id ?initial_run ?job_status ?name ?name_prefix
    ?sampling_percentage ?tags ?tags_all ?(schedule_frequency = [])
    ~job_type ~s3_job_definition () : aws_macie2_classification_job =
  {
    custom_data_identifier_ids;
    description;
    id;
    initial_run;
    job_status;
    job_type;
    name;
    name_prefix;
    sampling_percentage;
    tags;
    tags_all;
    s3_job_definition;
    schedule_frequency;
  }

type t = {
  tf_name : string;
  created_at : string prop;
  custom_data_identifier_ids : string list prop;
  description : string prop;
  id : string prop;
  initial_run : bool prop;
  job_arn : string prop;
  job_id : string prop;
  job_status : string prop;
  job_type : string prop;
  name : string prop;
  name_prefix : string prop;
  sampling_percentage : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_paused_details : user_paused_details list prop;
}

let make ?custom_data_identifier_ids ?description ?id ?initial_run
    ?job_status ?name ?name_prefix ?sampling_percentage ?tags
    ?tags_all ?(schedule_frequency = []) ~job_type ~s3_job_definition
    __id =
  let __type = "aws_macie2_classification_job" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       custom_data_identifier_ids =
         Prop.computed __type __id "custom_data_identifier_ids";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       initial_run = Prop.computed __type __id "initial_run";
       job_arn = Prop.computed __type __id "job_arn";
       job_id = Prop.computed __type __id "job_id";
       job_status = Prop.computed __type __id "job_status";
       job_type = Prop.computed __type __id "job_type";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       sampling_percentage =
         Prop.computed __type __id "sampling_percentage";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_paused_details =
         Prop.computed __type __id "user_paused_details";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_classification_job
        (aws_macie2_classification_job ?custom_data_identifier_ids
           ?description ?id ?initial_run ?job_status ?name
           ?name_prefix ?sampling_percentage ?tags ?tags_all
           ~schedule_frequency ~job_type ~s3_job_definition ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_data_identifier_ids ?description ?id
    ?initial_run ?job_status ?name ?name_prefix ?sampling_percentage
    ?tags ?tags_all ?(schedule_frequency = []) ~job_type
    ~s3_job_definition __id =
  let (r : _ Tf_core.resource) =
    make ?custom_data_identifier_ids ?description ?id ?initial_run
      ?job_status ?name ?name_prefix ?sampling_percentage ?tags
      ?tags_all ~schedule_frequency ~job_type ~s3_job_definition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
