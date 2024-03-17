(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_configuration_set__delivery_options = {
  sending_pool_name : string prop option; [@option]
      (** sending_pool_name *)
  tls_policy : string prop option; [@option]  (** tls_policy *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__delivery_options *)

type aws_sesv2_configuration_set__reputation_options = {
  last_fresh_start : string prop;  (** last_fresh_start *)
  reputation_metrics_enabled : bool prop option; [@option]
      (** reputation_metrics_enabled *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__reputation_options *)

type aws_sesv2_configuration_set__sending_options = {
  sending_enabled : bool prop option; [@option]
      (** sending_enabled *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__sending_options *)

type aws_sesv2_configuration_set__suppression_options = {
  suppressed_reasons : string prop list option; [@option]
      (** suppressed_reasons *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__suppression_options *)

type aws_sesv2_configuration_set__tracking_options = {
  custom_redirect_domain : string prop;  (** custom_redirect_domain *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__tracking_options *)

type aws_sesv2_configuration_set__vdm_options__dashboard_options = {
  engagement_metrics : string prop option; [@option]
      (** engagement_metrics *)
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set__vdm_options__dashboard_options *)

type aws_sesv2_configuration_set__vdm_options__guardian_options = {
  optimized_shared_delivery : string prop option; [@option]
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
  configuration_set_name : string prop;
      (** configuration_set_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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

type t = {
  arn : string prop;
  configuration_set_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sesv2_configuration_set ?id ?tags ?tags_all
    ~configuration_set_name ~delivery_options ~reputation_options
    ~sending_options ~suppression_options ~tracking_options
    ~vdm_options __resource_id =
  let __resource_type = "aws_sesv2_configuration_set" in
  let __resource =
    ({
       configuration_set_name;
       id;
       tags;
       tags_all;
       delivery_options;
       reputation_options;
       sending_options;
       suppression_options;
       tracking_options;
       vdm_options;
     }
      : aws_sesv2_configuration_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_configuration_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       configuration_set_name =
         Prop.computed __resource_type __resource_id
           "configuration_set_name";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
