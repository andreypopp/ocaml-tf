(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type delivery_options = {
  tls_policy : string prop option; [@option]  (** tls_policy *)
}
[@@deriving yojson_of]
(** delivery_options *)

type tracking_options = {
  custom_redirect_domain : string prop option; [@option]
      (** custom_redirect_domain *)
}
[@@deriving yojson_of]
(** tracking_options *)

type aws_ses_configuration_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  reputation_metrics_enabled : bool prop option; [@option]
      (** reputation_metrics_enabled *)
  sending_enabled : bool prop option; [@option]
      (** sending_enabled *)
  delivery_options : delivery_options list;
  tracking_options : tracking_options list;
}
[@@deriving yojson_of]
(** aws_ses_configuration_set *)

let delivery_options ?tls_policy () : delivery_options =
  { tls_policy }

let tracking_options ?custom_redirect_domain () : tracking_options =
  { custom_redirect_domain }

let aws_ses_configuration_set ?id ?reputation_metrics_enabled
    ?sending_enabled ~name ~delivery_options ~tracking_options () :
    aws_ses_configuration_set =
  {
    id;
    name;
    reputation_metrics_enabled;
    sending_enabled;
    delivery_options;
    tracking_options;
  }

type t = {
  arn : string prop;
  id : string prop;
  last_fresh_start : string prop;
  name : string prop;
  reputation_metrics_enabled : bool prop;
  sending_enabled : bool prop;
}

let register ?tf_module ?id ?reputation_metrics_enabled
    ?sending_enabled ~name ~delivery_options ~tracking_options
    __resource_id =
  let __resource_type = "aws_ses_configuration_set" in
  let __resource =
    aws_ses_configuration_set ?id ?reputation_metrics_enabled
      ?sending_enabled ~name ~delivery_options ~tracking_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_configuration_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       last_fresh_start =
         Prop.computed __resource_type __resource_id
           "last_fresh_start";
       name = Prop.computed __resource_type __resource_id "name";
       reputation_metrics_enabled =
         Prop.computed __resource_type __resource_id
           "reputation_metrics_enabled";
       sending_enabled =
         Prop.computed __resource_type __resource_id
           "sending_enabled";
     }
      : t)
  in
  __resource_attributes
