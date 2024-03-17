(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafv2_ip_set = {
  addresses : string prop list option; [@option]  (** addresses *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  ip_address_version : string prop;  (** ip_address_version *)
  name : string prop;  (** name *)
  scope : string prop;  (** scope *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_wafv2_ip_set *)

type t = {
  addresses : string list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  ip_address_version : string prop;
  lock_token : string prop;
  name : string prop;
  scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_wafv2_ip_set ?addresses ?description ?id ?tags ?tags_all
    ~ip_address_version ~name ~scope __resource_id =
  let __resource_type = "aws_wafv2_ip_set" in
  let __resource =
    ({
       addresses;
       description;
       id;
       ip_address_version;
       name;
       scope;
       tags;
       tags_all;
     }
      : aws_wafv2_ip_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_ip_set __resource);
  let __resource_attributes =
    ({
       addresses =
         Prop.computed __resource_type __resource_id "addresses";
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address_version =
         Prop.computed __resource_type __resource_id
           "ip_address_version";
       lock_token =
         Prop.computed __resource_type __resource_id "lock_token";
       name = Prop.computed __resource_type __resource_id "name";
       scope = Prop.computed __resource_type __resource_id "scope";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
