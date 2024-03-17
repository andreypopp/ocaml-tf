(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_signer_signing_job__destination__s3 = {
  bucket : string prop;  (** bucket *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_signer_signing_job__destination__s3 *)

type aws_signer_signing_job__destination = {
  s3 : aws_signer_signing_job__destination__s3 list;
}
[@@deriving yojson_of]
(** aws_signer_signing_job__destination *)

type aws_signer_signing_job__source__s3 = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_signer_signing_job__source__s3 *)

type aws_signer_signing_job__source = {
  s3 : aws_signer_signing_job__source__s3 list;
}
[@@deriving yojson_of]
(** aws_signer_signing_job__source *)

type aws_signer_signing_job__revocation_record = {
  reason : string prop;  (** reason *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}
[@@deriving yojson_of]

type aws_signer_signing_job__signed_object__s3 = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]

type aws_signer_signing_job__signed_object = {
  s3 : aws_signer_signing_job__signed_object__s3 list;  (** s3 *)
}
[@@deriving yojson_of]

type aws_signer_signing_job = {
  id : string prop option; [@option]  (** id *)
  ignore_signing_job_failure : bool prop option; [@option]
      (** ignore_signing_job_failure *)
  profile_name : string prop;  (** profile_name *)
  destination : aws_signer_signing_job__destination list;
  source : aws_signer_signing_job__source list;
}
[@@deriving yojson_of]
(** aws_signer_signing_job *)

let aws_signer_signing_job ?id ?ignore_signing_job_failure
    ~profile_name ~destination ~source __resource_id =
  let __resource_type = "aws_signer_signing_job" in
  let __resource =
    {
      id;
      ignore_signing_job_failure;
      profile_name;
      destination;
      source;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_signer_signing_job __resource);
  ()
