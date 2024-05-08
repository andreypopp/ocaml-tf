(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type features__additional_configuration = {
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type features = {
  additional_configuration : features__additional_configuration list;
      [@default []] [@yojson_drop_default ( = )]
      (** additional_configuration *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type aws_guardduty_detector

val aws_guardduty_detector :
  ?id:string prop -> unit -> aws_guardduty_detector

val yojson_of_aws_guardduty_detector : aws_guardduty_detector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  features : features list prop;
  finding_publishing_frequency : string prop;
  id : string prop;
  service_role_arn : string prop;
  status : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
