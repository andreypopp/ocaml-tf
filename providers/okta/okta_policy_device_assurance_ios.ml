(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_device_assurance_ios = {
  jailbreak : bool prop option; [@option]
  name : string prop;
  os_version : string prop option; [@option]
  screenlock_type : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_device_assurance_ios) -> ()

let yojson_of_okta_policy_device_assurance_ios =
  (function
   | {
       jailbreak = v_jailbreak;
       name = v_name;
       os_version = v_os_version;
       screenlock_type = v_screenlock_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_screenlock_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "screenlock_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_jailbreak with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "jailbreak", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_policy_device_assurance_ios ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_device_assurance_ios

[@@@deriving.end]

let okta_policy_device_assurance_ios ?jailbreak ?os_version
    ?screenlock_type ~name () : okta_policy_device_assurance_ios =
  { jailbreak; name; os_version; screenlock_type }

type t = {
  tf_name : string;
  created_by : string prop;
  created_date : string prop;
  id : string prop;
  jailbreak : bool prop;
  last_update : string prop;
  last_updated_by : string prop;
  name : string prop;
  os_version : string prop;
  platform : string prop;
  screenlock_type : string list prop;
}

let make ?jailbreak ?os_version ?screenlock_type ~name __id =
  let __type = "okta_policy_device_assurance_ios" in
  let __attrs =
    ({
       tf_name = __id;
       created_by = Prop.computed __type __id "created_by";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       jailbreak = Prop.computed __type __id "jailbreak";
       last_update = Prop.computed __type __id "last_update";
       last_updated_by = Prop.computed __type __id "last_updated_by";
       name = Prop.computed __type __id "name";
       os_version = Prop.computed __type __id "os_version";
       platform = Prop.computed __type __id "platform";
       screenlock_type = Prop.computed __type __id "screenlock_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_device_assurance_ios
        (okta_policy_device_assurance_ios ?jailbreak ?os_version
           ?screenlock_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?jailbreak ?os_version ?screenlock_type ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?jailbreak ?os_version ?screenlock_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
