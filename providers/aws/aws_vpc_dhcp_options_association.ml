(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_dhcp_options_association = {
  dhcp_options_id : string prop;  (** dhcp_options_id *)
  id : string prop option; [@option]  (** id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_vpc_dhcp_options_association *)

let aws_vpc_dhcp_options_association ?id ~dhcp_options_id ~vpc_id ()
    : aws_vpc_dhcp_options_association =
  { dhcp_options_id; id; vpc_id }

type t = {
  dhcp_options_id : string prop;
  id : string prop;
  vpc_id : string prop;
}

let make ?id ~dhcp_options_id ~vpc_id __id =
  let __type = "aws_vpc_dhcp_options_association" in
  let __attrs =
    ({
       dhcp_options_id = Prop.computed __type __id "dhcp_options_id";
       id = Prop.computed __type __id "id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_dhcp_options_association
        (aws_vpc_dhcp_options_association ?id ~dhcp_options_id
           ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~dhcp_options_id ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~dhcp_options_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
