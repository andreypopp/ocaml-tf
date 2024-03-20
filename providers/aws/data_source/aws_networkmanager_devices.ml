(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_networkmanager_devices = {
  global_network_id : string prop;
  id : string prop option; [@option]
  site_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_devices) -> ()

let yojson_of_aws_networkmanager_devices =
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
         match v_site_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "site_id", arg in
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
       `Assoc bnds
    : aws_networkmanager_devices -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_devices

[@@@deriving.end]

let aws_networkmanager_devices ?id ?site_id ?tags ~global_network_id
    () : aws_networkmanager_devices =
  { global_network_id; id; site_id; tags }

type t = {
  global_network_id : string prop;
  id : string prop;
  ids : string list prop;
  site_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?site_id ?tags ~global_network_id __id =
  let __type = "aws_networkmanager_devices" in
  let __attrs =
    ({
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_devices
        (aws_networkmanager_devices ?id ?site_id ?tags
           ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?site_id ?tags ~global_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?site_id ?tags ~global_network_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
