(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_network_interface_sg_attachment = {
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  security_group_id : string prop;  (** security_group_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_network_interface_sg_attachment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_network_interface_sg_attachment ?id ?timeouts
    ~network_interface_id ~security_group_id () :
    aws_network_interface_sg_attachment =
  { id; network_interface_id; security_group_id; timeouts }

type t = {
  id : string prop;
  network_interface_id : string prop;
  security_group_id : string prop;
}

let make ?id ?timeouts ~network_interface_id ~security_group_id __id
    =
  let __type = "aws_network_interface_sg_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_interface_sg_attachment
        (aws_network_interface_sg_attachment ?id ?timeouts
           ~network_interface_id ~security_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~network_interface_id
    ~security_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~network_interface_id ~security_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
