(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicequotas_template = {
  quota_code : string prop;  (** quota_code *)
  region : string prop;  (** region *)
  service_code : string prop;  (** service_code *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_servicequotas_template *)

type t = {
  global_quota : bool prop;
  id : string prop;
  quota_code : string prop;
  quota_name : string prop;
  region : string prop;
  service_code : string prop;
  service_name : string prop;
  unit : string prop;
  value : float prop;
}

let aws_servicequotas_template ~quota_code ~region ~service_code
    ~value __resource_id =
  let __resource_type = "aws_servicequotas_template" in
  let __resource =
    ({ quota_code; region; service_code; value }
      : aws_servicequotas_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicequotas_template __resource);
  let __resource_attributes =
    ({
       global_quota =
         Prop.computed __resource_type __resource_id "global_quota";
       id = Prop.computed __resource_type __resource_id "id";
       quota_code =
         Prop.computed __resource_type __resource_id "quota_code";
       quota_name =
         Prop.computed __resource_type __resource_id "quota_name";
       region = Prop.computed __resource_type __resource_id "region";
       service_code =
         Prop.computed __resource_type __resource_id "service_code";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       unit = Prop.computed __resource_type __resource_id "unit";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
