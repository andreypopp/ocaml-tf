(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?reputation_metrics_enabled ?sending_enabled ~name
    ~delivery_options ~tracking_options __id =
  let __type = "aws_ses_configuration_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       last_fresh_start =
         Prop.computed __type __id "last_fresh_start";
       name = Prop.computed __type __id "name";
       reputation_metrics_enabled =
         Prop.computed __type __id "reputation_metrics_enabled";
       sending_enabled = Prop.computed __type __id "sending_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_configuration_set
        (aws_ses_configuration_set ?id ?reputation_metrics_enabled
           ?sending_enabled ~name ~delivery_options ~tracking_options
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?reputation_metrics_enabled
    ?sending_enabled ~name ~delivery_options ~tracking_options __id =
  let (r : _ Tf_core.resource) =
    make ?id ?reputation_metrics_enabled ?sending_enabled ~name
      ~delivery_options ~tracking_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
