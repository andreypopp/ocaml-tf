(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type delivery_options = {
  sending_pool_name : string prop option; [@option]
      (** sending_pool_name *)
  tls_policy : string prop option; [@option]  (** tls_policy *)
}
[@@deriving yojson_of]
(** delivery_options *)

type reputation_options = {
  reputation_metrics_enabled : bool prop option; [@option]
      (** reputation_metrics_enabled *)
}
[@@deriving yojson_of]
(** reputation_options *)

type sending_options = {
  sending_enabled : bool prop option; [@option]
      (** sending_enabled *)
}
[@@deriving yojson_of]
(** sending_options *)

type suppression_options = {
  suppressed_reasons : string prop list option; [@option]
      (** suppressed_reasons *)
}
[@@deriving yojson_of]
(** suppression_options *)

type tracking_options = {
  custom_redirect_domain : string prop;  (** custom_redirect_domain *)
}
[@@deriving yojson_of]
(** tracking_options *)

type vdm_options__dashboard_options = {
  engagement_metrics : string prop option; [@option]
      (** engagement_metrics *)
}
[@@deriving yojson_of]
(** vdm_options__dashboard_options *)

type vdm_options__guardian_options = {
  optimized_shared_delivery : string prop option; [@option]
      (** optimized_shared_delivery *)
}
[@@deriving yojson_of]
(** vdm_options__guardian_options *)

type vdm_options = {
  dashboard_options : vdm_options__dashboard_options list;
  guardian_options : vdm_options__guardian_options list;
}
[@@deriving yojson_of]
(** vdm_options *)

type aws_sesv2_configuration_set = {
  configuration_set_name : string prop;
      (** configuration_set_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  delivery_options : delivery_options list;
  reputation_options : reputation_options list;
  sending_options : sending_options list;
  suppression_options : suppression_options list;
  tracking_options : tracking_options list;
  vdm_options : vdm_options list;
}
[@@deriving yojson_of]
(** aws_sesv2_configuration_set *)

let delivery_options ?sending_pool_name ?tls_policy () :
    delivery_options =
  { sending_pool_name; tls_policy }

let reputation_options ?reputation_metrics_enabled () :
    reputation_options =
  { reputation_metrics_enabled }

let sending_options ?sending_enabled () : sending_options =
  { sending_enabled }

let suppression_options ?suppressed_reasons () : suppression_options
    =
  { suppressed_reasons }

let tracking_options ~custom_redirect_domain () : tracking_options =
  { custom_redirect_domain }

let vdm_options__dashboard_options ?engagement_metrics () :
    vdm_options__dashboard_options =
  { engagement_metrics }

let vdm_options__guardian_options ?optimized_shared_delivery () :
    vdm_options__guardian_options =
  { optimized_shared_delivery }

let vdm_options ~dashboard_options ~guardian_options () : vdm_options
    =
  { dashboard_options; guardian_options }

let aws_sesv2_configuration_set ?id ?tags ?tags_all
    ~configuration_set_name ~delivery_options ~reputation_options
    ~sending_options ~suppression_options ~tracking_options
    ~vdm_options () : aws_sesv2_configuration_set =
  {
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

type t = {
  arn : string prop;
  configuration_set_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~configuration_set_name
    ~delivery_options ~reputation_options ~sending_options
    ~suppression_options ~tracking_options ~vdm_options __resource_id
    =
  let __resource_type = "aws_sesv2_configuration_set" in
  let __resource =
    aws_sesv2_configuration_set ?id ?tags ?tags_all
      ~configuration_set_name ~delivery_options ~reputation_options
      ~sending_options ~suppression_options ~tracking_options
      ~vdm_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
