(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_configuration_set__delivery_options = {
  sending_pool_name : string option; [@option]
      (** sending_pool_name *)
  tls_policy : string option; [@option]  (** tls_policy *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__delivery_options *)

type aws_sesv2_configuration_set__reputation_options = {
  last_fresh_start : string;  (** last_fresh_start *)
  reputation_metrics_enabled : bool option; [@option]
      (** reputation_metrics_enabled *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__reputation_options *)

type aws_sesv2_configuration_set__sending_options = {
  sending_enabled : bool option; [@option]  (** sending_enabled *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__sending_options *)

type aws_sesv2_configuration_set__suppression_options = {
  suppressed_reasons : string list option; [@option]
      (** suppressed_reasons *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__suppression_options *)

type aws_sesv2_configuration_set__tracking_options = {
  custom_redirect_domain : string;  (** custom_redirect_domain *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__tracking_options *)

type aws_sesv2_configuration_set__vdm_options__dashboard_options = {
  engagement_metrics : string option; [@option]
      (** engagement_metrics *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__vdm_options__dashboard_options *)

type aws_sesv2_configuration_set__vdm_options__guardian_options = {
  optimized_shared_delivery : string option; [@option]
      (** optimized_shared_delivery *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__vdm_options__guardian_options *)

type aws_sesv2_configuration_set__vdm_options = {
  dashboard_options :
    aws_sesv2_configuration_set__vdm_options__dashboard_options list;
  guardian_options :
    aws_sesv2_configuration_set__vdm_options__guardian_options list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__vdm_options *)

type aws_sesv2_configuration_set = {
  configuration_set_name : string;  (** configuration_set_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  delivery_options :
    aws_sesv2_configuration_set__delivery_options list;
  reputation_options :
    aws_sesv2_configuration_set__reputation_options list;
  sending_options :
    aws_sesv2_configuration_set__sending_options list;
  suppression_options :
    aws_sesv2_configuration_set__suppression_options list;
  tracking_options :
    aws_sesv2_configuration_set__tracking_options list;
  vdm_options : aws_sesv2_configuration_set__vdm_options list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set *)

let aws_sesv2_configuration_set ?tags ~configuration_set_name
    ~delivery_options ~reputation_options ~sending_options
    ~suppression_options ~tracking_options ~vdm_options __resource_id
    =
  let __resource_type = "aws_sesv2_configuration_set" in
  let __resource =
    {
      configuration_set_name;
      tags;
      delivery_options;
      reputation_options;
      sending_options;
      suppression_options;
      tracking_options;
      vdm_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_configuration_set __resource);
  ()
