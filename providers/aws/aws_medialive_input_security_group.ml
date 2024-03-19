(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type whitelist_rules = { cidr : string prop  (** cidr *) }
[@@deriving yojson_of]
(** whitelist_rules *)

type aws_medialive_input_security_group = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
  whitelist_rules : whitelist_rules list;
}
[@@deriving yojson_of]
(** aws_medialive_input_security_group *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let whitelist_rules ~cidr () : whitelist_rules = { cidr }

let aws_medialive_input_security_group ?id ?tags ?tags_all ?timeouts
    ~whitelist_rules () : aws_medialive_input_security_group =
  { id; tags; tags_all; timeouts; whitelist_rules }

type t = {
  arn : string prop;
  id : string prop;
  inputs : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~whitelist_rules __resource_id =
  let __resource_type = "aws_medialive_input_security_group" in
  let __resource =
    aws_medialive_input_security_group ?id ?tags ?tags_all ?timeouts
      ~whitelist_rules ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_medialive_input_security_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       inputs = Prop.computed __resource_type __resource_id "inputs";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
