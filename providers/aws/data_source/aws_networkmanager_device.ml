(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location = { subnet_arn : string prop; zone : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location) -> ()

let yojson_of_aws_location =
  (function
   | { subnet_arn = v_subnet_arn; zone = v_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_arn in
         ("subnet_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location

[@@@deriving.end]

type location = {
  address : string prop;
  latitude : string prop;
  longitude : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : location) -> ()

let yojson_of_location =
  (function
   | {
       address = v_address;
       latitude = v_latitude;
       longitude = v_longitude;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_longitude in
         ("longitude", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_latitude in
         ("latitude", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location

[@@@deriving.end]

type aws_networkmanager_device = {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_device) -> ()

let yojson_of_aws_networkmanager_device =
  (function
   | {
       device_id = v_device_id;
       global_network_id = v_global_network_id;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_id in
         ("device_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_device

[@@@deriving.end]

let aws_networkmanager_device ?id ?tags ~device_id ~global_network_id
    () : aws_networkmanager_device =
  { device_id; global_network_id; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  aws_location : aws_location list prop;
  description : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  location : location list prop;
  model : string prop;
  serial_number : string prop;
  site_id : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
  vendor : string prop;
}

let make ?id ?tags ~device_id ~global_network_id __id =
  let __type = "aws_networkmanager_device" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_location = Prop.computed __type __id "aws_location";
       description = Prop.computed __type __id "description";
       device_id = Prop.computed __type __id "device_id";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       model = Prop.computed __type __id "model";
       serial_number = Prop.computed __type __id "serial_number";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       vendor = Prop.computed __type __id "vendor";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_device
        (aws_networkmanager_device ?id ?tags ~device_id
           ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~device_id ~global_network_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~device_id ~global_network_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
