(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type revocation_record = {
  reason : string prop;
  revoked_at : string prop;
  revoked_by : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : revocation_record) -> ()

let yojson_of_revocation_record =
  (function
   | {
       reason = v_reason;
       revoked_at = v_revoked_at;
       revoked_by = v_revoked_by;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revoked_by in
         ("revoked_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revoked_at in
         ("revoked_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       `Assoc bnds
    : revocation_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_record

[@@@deriving.end]

type signed_object__s3 = { bucket : string prop; key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : signed_object__s3) -> ()

let yojson_of_signed_object__s3 =
  (function
   | { bucket = v_bucket; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : signed_object__s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_signed_object__s3

[@@@deriving.end]

type signed_object = { s3 : signed_object__s3 list }
[@@deriving_inline yojson_of]

let _ = fun (_ : signed_object) -> ()

let yojson_of_signed_object =
  (function
   | { s3 = v_s3 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_signed_object__s3 v_s3 in
         ("s3", arg) :: bnds
       in
       `Assoc bnds
    : signed_object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_signed_object

[@@@deriving.end]

type source__s3 = {
  bucket : string prop;
  key : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__s3) -> ()

let yojson_of_source__s3 =
  (function
   | { bucket = v_bucket; key = v_key; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : source__s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__s3

[@@@deriving.end]

type source = { s3 : source__s3 list } [@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | { s3 = v_s3 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_source__s3 v_s3 in
         ("s3", arg) :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type aws_signer_signing_job = {
  id : string prop option; [@option]
  job_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_signer_signing_job) -> ()

let yojson_of_aws_signer_signing_job =
  (function
   | { id = v_id; job_id = v_job_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_id in
         ("job_id", arg) :: bnds
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
    : aws_signer_signing_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_signer_signing_job

[@@@deriving.end]

let aws_signer_signing_job ?id ~job_id () : aws_signer_signing_job =
  { id; job_id }

type t = {
  completed_at : string prop;
  created_at : string prop;
  id : string prop;
  job_id : string prop;
  job_invoker : string prop;
  job_owner : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  profile_name : string prop;
  profile_version : string prop;
  requested_by : string prop;
  revocation_record : revocation_record list prop;
  signature_expires_at : string prop;
  signed_object : signed_object list prop;
  source : source list prop;
  status : string prop;
  status_reason : string prop;
}

let make ?id ~job_id __id =
  let __type = "aws_signer_signing_job" in
  let __attrs =
    ({
       completed_at = Prop.computed __type __id "completed_at";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       job_id = Prop.computed __type __id "job_id";
       job_invoker = Prop.computed __type __id "job_invoker";
       job_owner = Prop.computed __type __id "job_owner";
       platform_display_name =
         Prop.computed __type __id "platform_display_name";
       platform_id = Prop.computed __type __id "platform_id";
       profile_name = Prop.computed __type __id "profile_name";
       profile_version = Prop.computed __type __id "profile_version";
       requested_by = Prop.computed __type __id "requested_by";
       revocation_record =
         Prop.computed __type __id "revocation_record";
       signature_expires_at =
         Prop.computed __type __id "signature_expires_at";
       signed_object = Prop.computed __type __id "signed_object";
       source = Prop.computed __type __id "source";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_signer_signing_job
        (aws_signer_signing_job ?id ~job_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~job_id __id =
  let (r : _ Tf_core.resource) = make ?id ~job_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
