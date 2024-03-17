(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkfirewall_firewall__encryption_configuration = {
  key_id : string prop option; [@option]  (** key_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall__encryption_configuration *)

type aws_networkfirewall_firewall__subnet_mapping = {
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall__subnet_mapping *)

type aws_networkfirewall_firewall__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall__timeouts *)

type aws_networkfirewall_firewall__firewall_status__sync_states__attachment = {
  endpoint_id : string prop;  (** endpoint_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall__firewall_status__sync_states = {
  attachment :
    aws_networkfirewall_firewall__firewall_status__sync_states__attachment
    list;
      (** attachment *)
  availability_zone : string prop;  (** availability_zone *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall__firewall_status = {
  sync_states :
    aws_networkfirewall_firewall__firewall_status__sync_states list;
      (** sync_states *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall = {
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  description : string prop option; [@option]  (** description *)
  firewall_policy_arn : string prop;  (** firewall_policy_arn *)
  firewall_policy_change_protection : bool prop option; [@option]
      (** firewall_policy_change_protection *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subnet_change_protection : bool prop option; [@option]
      (** subnet_change_protection *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
  encryption_configuration :
    aws_networkfirewall_firewall__encryption_configuration list;
  subnet_mapping : aws_networkfirewall_firewall__subnet_mapping list;
  timeouts : aws_networkfirewall_firewall__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall *)

type t = {
  arn : string prop;
  delete_protection : bool prop;
  description : string prop;
  firewall_policy_arn : string prop;
  firewall_policy_change_protection : bool prop;
  firewall_status :
    aws_networkfirewall_firewall__firewall_status list prop;
  id : string prop;
  name : string prop;
  subnet_change_protection : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_token : string prop;
  vpc_id : string prop;
}

let aws_networkfirewall_firewall ?delete_protection ?description
    ?firewall_policy_change_protection ?id ?subnet_change_protection
    ?tags ?tags_all ?timeouts ~firewall_policy_arn ~name ~vpc_id
    ~encryption_configuration ~subnet_mapping __resource_id =
  let __resource_type = "aws_networkfirewall_firewall" in
  let __resource =
    ({
       delete_protection;
       description;
       firewall_policy_arn;
       firewall_policy_change_protection;
       id;
       name;
       subnet_change_protection;
       tags;
       tags_all;
       vpc_id;
       encryption_configuration;
       subnet_mapping;
       timeouts;
     }
      : aws_networkfirewall_firewall)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkfirewall_firewall __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       delete_protection =
         Prop.computed __resource_type __resource_id
           "delete_protection";
       description =
         Prop.computed __resource_type __resource_id "description";
       firewall_policy_arn =
         Prop.computed __resource_type __resource_id
           "firewall_policy_arn";
       firewall_policy_change_protection =
         Prop.computed __resource_type __resource_id
           "firewall_policy_change_protection";
       firewall_status =
         Prop.computed __resource_type __resource_id
           "firewall_status";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subnet_change_protection =
         Prop.computed __resource_type __resource_id
           "subnet_change_protection";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       update_token =
         Prop.computed __resource_type __resource_id "update_token";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
