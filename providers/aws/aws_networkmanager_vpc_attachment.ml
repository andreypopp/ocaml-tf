(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?tags_all ?timeouts ~core_network_id ~subnet_arns
    ~vpc_arn ~options __id =
  let __type = "aws_networkmanager_vpc_attachment" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attachment_policy_rule_number =
         Prop.computed __type __id "attachment_policy_rule_number";
       attachment_type = Prop.computed __type __id "attachment_type";
       core_network_arn =
         Prop.computed __type __id "core_network_arn";
       core_network_id = Prop.computed __type __id "core_network_id";
       edge_location = Prop.computed __type __id "edge_location";
       id = Prop.computed __type __id "id";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       resource_arn = Prop.computed __type __id "resource_arn";
       segment_name = Prop.computed __type __id "segment_name";
       state = Prop.computed __type __id "state";
       subnet_arns = Prop.computed __type __id "subnet_arns";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_arn = Prop.computed __type __id "vpc_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_vpc_attachment
        (aws_networkmanager_vpc_attachment ?id ?tags ?tags_all
           ?timeouts ~core_network_id ~subnet_arns ~vpc_arn ~options
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~core_network_id ~subnet_arns ~vpc_arn ~options __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~core_network_id ~subnet_arns
      ~vpc_arn ~options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
