(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type devices = {
  created : string prop;
  deleted : bool prop;
  device_type : string prop;
  id : string prop;
  ip : string prop;
  key : string prop;
  last_seen : string prop;
  mac_address : string prop;
  manufacturer : string prop;
  model : string prop;
  name : string prop;
  os_distro_name : string prop;
  os_distro_revision : string prop;
  os_version : string prop;
  revoked_at : string prop;
  serial_number : string prop;
  updated : string prop;
  user_email : string prop;
  user_id : string prop;
  user_name : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : devices) -> ()

let yojson_of_devices =
  (function
   | {
       created = v_created;
       deleted = v_deleted;
       device_type = v_device_type;
       id = v_id;
       ip = v_ip;
       key = v_key;
       last_seen = v_last_seen;
       mac_address = v_mac_address;
       manufacturer = v_manufacturer;
       model = v_model;
       name = v_name;
       os_distro_name = v_os_distro_name;
       os_distro_revision = v_os_distro_revision;
       os_version = v_os_version;
       revoked_at = v_revoked_at;
       serial_number = v_serial_number;
       updated = v_updated;
       user_email = v_user_email;
       user_id = v_user_id;
       user_name = v_user_name;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_email in
         ("user_email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated in
         ("updated", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_serial_number in
         ("serial_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revoked_at in
         ("revoked_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_version in
         ("os_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_os_distro_revision
         in
         ("os_distro_revision", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_os_distro_name
         in
         ("os_distro_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model in
         ("model", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_manufacturer in
         ("manufacturer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mac_address in
         ("mac_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_seen in
         ("last_seen", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_type in
         ("device_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deleted in
         ("deleted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created in
         ("created", arg) :: bnds
       in
       `Assoc bnds
    : devices -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_devices

[@@@deriving.end]

type cloudflare_devices = {
  account_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_devices) -> ()

let yojson_of_cloudflare_devices =
  (function
   | { account_id = v_account_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_devices -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_devices

[@@@deriving.end]

let cloudflare_devices ?id ~account_id () : cloudflare_devices =
  { account_id; id }

type t = {
  account_id : string prop;
  devices : devices list prop;
  id : string prop;
}

let make ?id ~account_id __id =
  let __type = "cloudflare_devices" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       devices = Prop.computed __type __id "devices";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_devices
        (cloudflare_devices ?id ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
