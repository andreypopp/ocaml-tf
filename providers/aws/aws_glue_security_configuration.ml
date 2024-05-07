(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration__cloudwatch_encryption = {
  cloudwatch_encryption_mode : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encryption_configuration__cloudwatch_encryption) -> ()

let yojson_of_encryption_configuration__cloudwatch_encryption =
  (function
   | {
       cloudwatch_encryption_mode = v_cloudwatch_encryption_mode;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_encryption_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_configuration__cloudwatch_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration__cloudwatch_encryption

[@@@deriving.end]

type encryption_configuration__job_bookmarks_encryption = {
  job_bookmarks_encryption_mode : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encryption_configuration__job_bookmarks_encryption) -> ()

let yojson_of_encryption_configuration__job_bookmarks_encryption =
  (function
   | {
       job_bookmarks_encryption_mode =
         v_job_bookmarks_encryption_mode;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_job_bookmarks_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_bookmarks_encryption_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_configuration__job_bookmarks_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration__job_bookmarks_encryption

[@@@deriving.end]

type encryption_configuration__s3_encryption = {
  kms_key_arn : string prop option; [@option]
  s3_encryption_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration__s3_encryption) -> ()

let yojson_of_encryption_configuration__s3_encryption =
  (function
   | {
       kms_key_arn = v_kms_key_arn;
       s3_encryption_mode = v_s3_encryption_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_encryption_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_configuration__s3_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration__s3_encryption

[@@@deriving.end]

type encryption_configuration = {
  cloudwatch_encryption :
    encryption_configuration__cloudwatch_encryption list;
  job_bookmarks_encryption :
    encryption_configuration__job_bookmarks_encryption list;
  s3_encryption : encryption_configuration__s3_encryption list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | {
       cloudwatch_encryption = v_cloudwatch_encryption;
       job_bookmarks_encryption = v_job_bookmarks_encryption;
       s3_encryption = v_s3_encryption;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_configuration__s3_encryption
             v_s3_encryption
         in
         ("s3_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_configuration__job_bookmarks_encryption
             v_job_bookmarks_encryption
         in
         ("job_bookmarks_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_configuration__cloudwatch_encryption
             v_cloudwatch_encryption
         in
         ("cloudwatch_encryption", arg) :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type aws_glue_security_configuration = {
  id : string prop option; [@option]
  name : string prop;
  encryption_configuration : encryption_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_security_configuration) -> ()

let yojson_of_aws_glue_security_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       encryption_configuration = v_encryption_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_configuration
             v_encryption_configuration
         in
         ("encryption_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_security_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_security_configuration

[@@@deriving.end]

let encryption_configuration__cloudwatch_encryption
    ?cloudwatch_encryption_mode ?kms_key_arn () :
    encryption_configuration__cloudwatch_encryption =
  { cloudwatch_encryption_mode; kms_key_arn }

let encryption_configuration__job_bookmarks_encryption
    ?job_bookmarks_encryption_mode ?kms_key_arn () :
    encryption_configuration__job_bookmarks_encryption =
  { job_bookmarks_encryption_mode; kms_key_arn }

let encryption_configuration__s3_encryption ?kms_key_arn
    ?s3_encryption_mode () : encryption_configuration__s3_encryption
    =
  { kms_key_arn; s3_encryption_mode }

let encryption_configuration ~cloudwatch_encryption
    ~job_bookmarks_encryption ~s3_encryption () :
    encryption_configuration =
  { cloudwatch_encryption; job_bookmarks_encryption; s3_encryption }

let aws_glue_security_configuration ?id ~name
    ~encryption_configuration () : aws_glue_security_configuration =
  { id; name; encryption_configuration }

type t = { tf_name : string; id : string prop; name : string prop }

let make ?id ~name ~encryption_configuration __id =
  let __type = "aws_glue_security_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_security_configuration
        (aws_glue_security_configuration ?id ~name
           ~encryption_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~encryption_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~encryption_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
