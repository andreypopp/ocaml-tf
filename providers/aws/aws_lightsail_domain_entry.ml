(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_domain_entry = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  is_alias : bool prop option; [@option]  (** is_alias *)
  name : string prop;  (** name *)
  target : string prop;  (** target *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lightsail_domain_entry *)

let aws_lightsail_domain_entry ?id ?is_alias ~domain_name ~name
    ~target ~type_ () : aws_lightsail_domain_entry =
  { domain_name; id; is_alias; name; target; type_ }

type t = {
  domain_name : string prop;
  id : string prop;
  is_alias : bool prop;
  name : string prop;
  target : string prop;
  type_ : string prop;
}

let register ?tf_module ?id ?is_alias ~domain_name ~name ~target
    ~type_ __resource_id =
  let __resource_type = "aws_lightsail_domain_entry" in
  let __resource =
    aws_lightsail_domain_entry ?id ?is_alias ~domain_name ~name
      ~target ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_domain_entry __resource);
  let __resource_attributes =
    ({
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       is_alias =
         Prop.computed __resource_type __resource_id "is_alias";
       name = Prop.computed __resource_type __resource_id "name";
       target = Prop.computed __resource_type __resource_id "target";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
