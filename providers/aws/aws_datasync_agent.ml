(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_agent__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_datasync_agent__timeouts *)

type aws_datasync_agent = {
  activation_key : string prop option; [@option]
      (** activation_key *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop option; [@option]  (** name *)
  private_link_endpoint : string prop option; [@option]
      (** private_link_endpoint *)
  security_group_arns : string prop list option; [@option]
      (** security_group_arns *)
  subnet_arns : string prop list option; [@option]
      (** subnet_arns *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  timeouts : aws_datasync_agent__timeouts option;
}
[@@deriving yojson_of]
(** aws_datasync_agent *)

type t = {
  activation_key : string prop;
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  private_link_endpoint : string prop;
  security_group_arns : string list prop;
  subnet_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_endpoint_id : string prop;
}

let aws_datasync_agent ?activation_key ?id ?ip_address ?name
    ?private_link_endpoint ?security_group_arns ?subnet_arns ?tags
    ?tags_all ?vpc_endpoint_id ?timeouts __resource_id =
  let __resource_type = "aws_datasync_agent" in
  let __resource =
    ({
       activation_key;
       id;
       ip_address;
       name;
       private_link_endpoint;
       security_group_arns;
       subnet_arns;
       tags;
       tags_all;
       vpc_endpoint_id;
       timeouts;
     }
      : aws_datasync_agent)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_agent __resource);
  let __resource_attributes =
    ({
       activation_key =
         Prop.computed __resource_type __resource_id "activation_key";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       name = Prop.computed __resource_type __resource_id "name";
       private_link_endpoint =
         Prop.computed __resource_type __resource_id
           "private_link_endpoint";
       security_group_arns =
         Prop.computed __resource_type __resource_id
           "security_group_arns";
       subnet_arns =
         Prop.computed __resource_type __resource_id "subnet_arns";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_endpoint_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_id";
     }
      : t)
  in
  __resource_attributes
