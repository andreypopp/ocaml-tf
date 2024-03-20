(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_default_vpc_dhcp_options = {
  id : string prop option; [@option]  (** id *)
  owner_id : string prop option; [@option]  (** owner_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_default_vpc_dhcp_options *)

let aws_default_vpc_dhcp_options ?id ?owner_id ?tags ?tags_all () :
    aws_default_vpc_dhcp_options =
  { id; owner_id; tags; tags_all }

type t = {
  arn : string prop;
  domain_name : string prop;
  domain_name_servers : string prop;
  id : string prop;
  netbios_name_servers : string prop;
  netbios_node_type : string prop;
  ntp_servers : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?owner_id ?tags ?tags_all __id =
  let __type = "aws_default_vpc_dhcp_options" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       domain_name_servers =
         Prop.computed __type __id "domain_name_servers";
       id = Prop.computed __type __id "id";
       netbios_name_servers =
         Prop.computed __type __id "netbios_name_servers";
       netbios_node_type =
         Prop.computed __type __id "netbios_node_type";
       ntp_servers = Prop.computed __type __id "ntp_servers";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_default_vpc_dhcp_options
        (aws_default_vpc_dhcp_options ?id ?owner_id ?tags ?tags_all
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owner_id ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?id ?owner_id ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
