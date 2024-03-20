(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_network_interface_attachment = {
  device_index : float prop;
  id : string prop option; [@option]
  instance_id : string prop;
  network_interface_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_network_interface_attachment) -> ()

let yojson_of_aws_network_interface_attachment =
  (function
   | {
       device_index = v_device_index;
       id = v_id;
       instance_id = v_instance_id;
       network_interface_id = v_network_interface_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_device_index in
         ("device_index", arg) :: bnds
       in
       `Assoc bnds
    : aws_network_interface_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_network_interface_attachment

[@@@deriving.end]

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
