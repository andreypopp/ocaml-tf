(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type destination__s3 = {
  bucket : string prop;  (** bucket *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** destination__s3 *)

type destination = { s3 : destination__s3 list }
[@@deriving yojson_of]
(** destination *)

type source__s3 = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** source__s3 *)

type source = { s3 : source__s3 list } [@@deriving yojson_of]
(** source *)

type revocation_record = {
  reason : string prop;  (** reason *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}
[@@deriving yojson_of]

type signed_object__s3 = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]

type signed_object = { s3 : signed_object__s3 list  (** s3 *) }
[@@deriving yojson_of]

type aws_signer_signing_job = {
  id : string prop option; [@option]  (** id *)
  ignore_signing_job_failure : bool prop option; [@option]
      (** ignore_signing_job_failure *)
  profile_name : string prop;  (** profile_name *)
  destination : destination list;
  source : source list;
}
[@@deriving yojson_of]
(** aws_signer_signing_job *)

let destination__s3 ?prefix ~bucket () : destination__s3 =
  { bucket; prefix }

let destination ~s3 () : destination = { s3 }

let source__s3 ~bucket ~key ~version () : source__s3 =
  { bucket; key; version }

let source ~s3 () : source = { s3 }

let aws_signer_signing_job ?id ?ignore_signing_job_failure
    ~profile_name ~destination ~source () : aws_signer_signing_job =
  {
    id;
    ignore_signing_job_failure;
    profile_name;
    destination;
    source;
  }

type t = {
  completed_at : string prop;
  created_at : string prop;
  id : string prop;
  ignore_signing_job_failure : bool prop;
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
  status : string prop;
  status_reason : string prop;
}

let register ?tf_module ?id ?ignore_signing_job_failure ~profile_name
    ~destination ~source __resource_id =
  let __resource_type = "aws_signer_signing_job" in
  let __resource =
    aws_signer_signing_job ?id ?ignore_signing_job_failure
      ~profile_name ~destination ~source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_signer_signing_job __resource);
  let __resource_attributes =
    ({
       completed_at =
         Prop.computed __resource_type __resource_id "completed_at";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       ignore_signing_job_failure =
         Prop.computed __resource_type __resource_id
           "ignore_signing_job_failure";
       job_id = Prop.computed __resource_type __resource_id "job_id";
       job_invoker =
         Prop.computed __resource_type __resource_id "job_invoker";
       job_owner =
         Prop.computed __resource_type __resource_id "job_owner";
       platform_display_name =
         Prop.computed __resource_type __resource_id
           "platform_display_name";
       platform_id =
         Prop.computed __resource_type __resource_id "platform_id";
       profile_name =
         Prop.computed __resource_type __resource_id "profile_name";
       profile_version =
         Prop.computed __resource_type __resource_id
           "profile_version";
       requested_by =
         Prop.computed __resource_type __resource_id "requested_by";
       revocation_record =
         Prop.computed __resource_type __resource_id
           "revocation_record";
       signature_expires_at =
         Prop.computed __resource_type __resource_id
           "signature_expires_at";
       signed_object =
         Prop.computed __resource_type __resource_id "signed_object";
       status = Prop.computed __resource_type __resource_id "status";
       status_reason =
         Prop.computed __resource_type __resource_id "status_reason";
     }
      : t)
  in
  __resource_attributes
