(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_network_interface_attachment = {
  device_index : float prop;  (** device_index *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  network_interface_id : string prop;  (** network_interface_id *)
}
[@@deriving yojson_of]
(** aws_network_interface_attachment *)

let aws_network_interface_attachment ?id ~device_index ~instance_id
    ~network_interface_id () : aws_network_interface_attachment =
  { device_index; id; instance_id; network_interface_id }

type t = {
  attachment_id : string prop;
  device_index : float prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  status : string prop;
}

let make ?id ~device_index ~instance_id ~network_interface_id __id =
  let __type = "aws_network_interface_attachment" in
  let __attrs =
    ({
       attachment_id = Prop.computed __type __id "attachment_id";
       device_index = Prop.computed __type __id "device_index";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_interface_attachment
        (aws_network_interface_attachment ?id ~device_index
           ~instance_id ~network_interface_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~device_index ~instance_id
    ~network_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~device_index ~instance_id ~network_interface_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
