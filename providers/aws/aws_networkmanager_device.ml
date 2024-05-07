(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location = {
  subnet_arn : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location) -> ()

let yojson_of_aws_location =
  (function
   | { subnet_arn = v_subnet_arn; zone = v_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location

[@@@deriving.end]

type location = {
  address : string prop option; [@option]
  latitude : string prop option; [@option]
  longitude : string prop option; [@option]
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
         match v_longitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "longitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_latitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "latitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_networkmanager_device = {
  description : string prop option; [@option]
  global_network_id : string prop;
  id : string prop option; [@option]
  model : string prop option; [@option]
  serial_number : string prop option; [@option]
  site_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  vendor : string prop option; [@option]
  aws_location : aws_location list;
  location : location list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_device) -> ()

let yojson_of_aws_networkmanager_device =
  (function
   | {
       description = v_description;
       global_network_id = v_global_network_id;
       id = v_id;
       model = v_model;
       serial_number = v_serial_number;
       site_id = v_site_id;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       vendor = v_vendor;
       aws_location = v_aws_location;
       location = v_location;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_location v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_aws_location v_aws_location
         in
         ("aws_location", arg) :: bnds
       in
       let bnds =
         match v_vendor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vendor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_site_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "site_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serial_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serial_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_device

[@@@deriving.end]

let aws_location ?subnet_arn ?zone () : aws_location =
  { subnet_arn; zone }

let location ?address ?latitude ?longitude () : location =
  { address; latitude; longitude }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_device ?description ?id ?model ?serial_number
    ?site_id ?tags ?tags_all ?type_ ?vendor ?(aws_location = [])
    ?(location = []) ?timeouts ~global_network_id () :
    aws_networkmanager_device =
  {
    description;
    global_network_id;
    id;
    model;
    serial_number;
    site_id;
    tags;
    tags_all;
    type_;
    vendor;
    aws_location;
    location;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  model : string prop;
  serial_number : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  vendor : string prop;
}

let make ?description ?id ?model ?serial_number ?site_id ?tags
    ?tags_all ?type_ ?vendor ?(aws_location = []) ?(location = [])
    ?timeouts ~global_network_id __id =
  let __type = "aws_networkmanager_device" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       model = Prop.computed __type __id "model";
       serial_number = Prop.computed __type __id "serial_number";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
        (aws_networkmanager_device ?description ?id ?model
           ?serial_number ?site_id ?tags ?tags_all ?type_ ?vendor
           ~aws_location ~location ?timeouts ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?model ?serial_number
    ?site_id ?tags ?tags_all ?type_ ?vendor ?(aws_location = [])
    ?(location = []) ?timeouts ~global_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?model ?serial_number ?site_id ?tags
      ?tags_all ?type_ ?vendor ~aws_location ~location ?timeouts
      ~global_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
