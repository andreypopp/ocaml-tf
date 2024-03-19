(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type options = {
  appliance_mode_support : bool prop option; [@option]
      (** appliance_mode_support *)
  ipv6_support : bool prop option; [@option]  (** ipv6_support *)
}
[@@deriving yojson_of]
(** options *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_vpc_attachment = {
  core_network_id : string prop;  (** core_network_id *)
  id : string prop option; [@option]  (** id *)
  subnet_arns : string prop list;  (** subnet_arns *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_arn : string prop;  (** vpc_arn *)
  options : options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_vpc_attachment *)

let options ?appliance_mode_support ?ipv6_support () : options =
  { appliance_mode_support; ipv6_support }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_vpc_attachment ?id ?tags ?tags_all ?timeouts
    ~core_network_id ~subnet_arns ~vpc_arn ~options () :
    aws_networkmanager_vpc_attachment =
  {
    core_network_id;
    id;
    subnet_arns;
    tags;
    tags_all;
    vpc_arn;
    options;
    timeouts;
  }

type t = {
  arn : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
  subnet_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_arn : string prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~core_network_id ~subnet_arns ~vpc_arn ~options __resource_id =
  let __resource_type = "aws_networkmanager_vpc_attachment" in
  let __resource =
    aws_networkmanager_vpc_attachment ?id ?tags ?tags_all ?timeouts
      ~core_network_id ~subnet_arns ~vpc_arn ~options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_vpc_attachment __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       attachment_policy_rule_number =
         Prop.computed __resource_type __resource_id
           "attachment_policy_rule_number";
       attachment_type =
         Prop.computed __resource_type __resource_id
           "attachment_type";
       core_network_arn =
         Prop.computed __resource_type __resource_id
           "core_network_arn";
       core_network_id =
         Prop.computed __resource_type __resource_id
           "core_network_id";
       edge_location =
         Prop.computed __resource_type __resource_id "edge_location";
       id = Prop.computed __resource_type __resource_id "id";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       segment_name =
         Prop.computed __resource_type __resource_id "segment_name";
       state = Prop.computed __resource_type __resource_id "state";
       subnet_arns =
         Prop.computed __resource_type __resource_id "subnet_arns";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_arn =
         Prop.computed __resource_type __resource_id "vpc_arn";
     }
      : t)
  in
  __resource_attributes
