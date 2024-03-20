(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_networkmanager_site = {
  global_network_id : string prop;
  id : string prop option; [@option]
  site_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_site) -> ()

let yojson_of_aws_networkmanager_site =
  (function
   | {
       global_network_id = v_global_network_id;
       id = v_id;
       site_id = v_site_id;
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
         let arg = yojson_of_prop yojson_of_string v_site_id in
         ("site_id", arg) :: bnds
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
       `Assoc bnds
    : aws_networkmanager_site -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_site

[@@@deriving.end]

let aws_networkmanager_site ?id ?tags ~global_network_id ~site_id ()
    : aws_networkmanager_site =
  { global_network_id; id; site_id; tags }

type t = {
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  location : location list prop;
  site_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~global_network_id ~site_id __id =
  let __type = "aws_networkmanager_site" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_site
        (aws_networkmanager_site ?id ?tags ~global_network_id
           ~site_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~global_network_id ~site_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~global_network_id ~site_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
