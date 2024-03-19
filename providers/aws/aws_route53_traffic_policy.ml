(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_traffic_policy = {
  comment : string prop option; [@option]  (** comment *)
  document : string prop;  (** document *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_traffic_policy *)

let aws_route53_traffic_policy ?comment ?id ~document ~name () :
    aws_route53_traffic_policy =
  { comment; document; id; name }

type t = {
  comment : string prop;
  document : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  version : float prop;
}

let register ?tf_module ?comment ?id ~document ~name __resource_id =
  let __resource_type = "aws_route53_traffic_policy" in
  let __resource =
    aws_route53_traffic_policy ?comment ?id ~document ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_traffic_policy __resource);
  let __resource_attributes =
    ({
       comment =
         Prop.computed __resource_type __resource_id "comment";
       document =
         Prop.computed __resource_type __resource_id "document";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
