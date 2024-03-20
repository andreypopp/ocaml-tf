(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_netapp_active_directory = {
  aes_encryption : bool prop option; [@option]
  backup_operators : string prop list option; [@option]
  description : string prop option; [@option]
  dns : string prop;
  domain : string prop;
  encrypt_dc_connections : bool prop option; [@option]
  id : string prop option; [@option]
  kdc_hostname : string prop option; [@option]
  kdc_ip : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  ldap_signing : bool prop option; [@option]
  location : string prop;
  name : string prop;
  net_bios_prefix : string prop;
  nfs_users_with_ldap : bool prop option; [@option]
  organizational_unit : string prop option; [@option]
  password : string prop;
  project : string prop option; [@option]
  security_operators : string prop list option; [@option]
  site : string prop option; [@option]
  username : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netapp_active_directory) -> ()

let yojson_of_google_netapp_active_directory =
  (function
   | {
       aes_encryption = v_aes_encryption;
       backup_operators = v_backup_operators;
       description = v_description;
       dns = v_dns;
       domain = v_domain;
       encrypt_dc_connections = v_encrypt_dc_connections;
       id = v_id;
       kdc_hostname = v_kdc_hostname;
       kdc_ip = v_kdc_ip;
       labels = v_labels;
       ldap_signing = v_ldap_signing;
       location = v_location;
       name = v_name;
       net_bios_prefix = v_net_bios_prefix;
       nfs_users_with_ldap = v_nfs_users_with_ldap;
       organizational_unit = v_organizational_unit;
       password = v_password;
       project = v_project;
       security_operators = v_security_operators;
       site = v_site;
       username = v_username;
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
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_site with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "site", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_operators with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_operators", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_organizational_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizational_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nfs_users_with_ldap with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nfs_users_with_ldap", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_net_bios_prefix
         in
         ("net_bios_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_ldap_signing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ldap_signing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kdc_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kdc_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kdc_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kdc_hostname", arg in
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
         match v_encrypt_dc_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypt_dc_connections", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns in
         ("dns", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_operators with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "backup_operators", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aes_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "aes_encryption", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_netapp_active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netapp_active_directory

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_active_directory ?aes_encryption ?backup_operators
    ?description ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip
    ?labels ?ldap_signing ?nfs_users_with_ldap ?organizational_unit
    ?project ?security_operators ?site ?timeouts ~dns ~domain
    ~location ~name ~net_bios_prefix ~password ~username () :
    google_netapp_active_directory =
  {
    aes_encryption;
    backup_operators;
    description;
    dns;
    domain;
    encrypt_dc_connections;
    id;
    kdc_hostname;
    kdc_ip;
    labels;
    ldap_signing;
    location;
    name;
    net_bios_prefix;
    nfs_users_with_ldap;
    organizational_unit;
    password;
    project;
    security_operators;
    site;
    username;
    timeouts;
  }

type t = {
  aes_encryption : bool prop;
  backup_operators : string list prop;
  create_time : string prop;
  description : string prop;
  dns : string prop;
  domain : string prop;
  effective_labels : (string * string) list prop;
  encrypt_dc_connections : bool prop;
  id : string prop;
  kdc_hostname : string prop;
  kdc_ip : string prop;
  labels : (string * string) list prop;
  ldap_signing : bool prop;
  location : string prop;
  name : string prop;
  net_bios_prefix : string prop;
  nfs_users_with_ldap : bool prop;
  organizational_unit : string prop;
  password : string prop;
  project : string prop;
  security_operators : string list prop;
  site : string prop;
  state : string prop;
  state_details : string prop;
  terraform_labels : (string * string) list prop;
  username : string prop;
}

let make ?aes_encryption ?backup_operators ?description
    ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip ?labels
    ?ldap_signing ?nfs_users_with_ldap ?organizational_unit ?project
    ?security_operators ?site ?timeouts ~dns ~domain ~location ~name
    ~net_bios_prefix ~password ~username __id =
  let __type = "google_netapp_active_directory" in
  let __attrs =
    ({
       aes_encryption = Prop.computed __type __id "aes_encryption";
       backup_operators =
         Prop.computed __type __id "backup_operators";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       dns = Prop.computed __type __id "dns";
       domain = Prop.computed __type __id "domain";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encrypt_dc_connections =
         Prop.computed __type __id "encrypt_dc_connections";
       id = Prop.computed __type __id "id";
       kdc_hostname = Prop.computed __type __id "kdc_hostname";
       kdc_ip = Prop.computed __type __id "kdc_ip";
       labels = Prop.computed __type __id "labels";
       ldap_signing = Prop.computed __type __id "ldap_signing";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       net_bios_prefix = Prop.computed __type __id "net_bios_prefix";
       nfs_users_with_ldap =
         Prop.computed __type __id "nfs_users_with_ldap";
       organizational_unit =
         Prop.computed __type __id "organizational_unit";
       password = Prop.computed __type __id "password";
       project = Prop.computed __type __id "project";
       security_operators =
         Prop.computed __type __id "security_operators";
       site = Prop.computed __type __id "site";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_active_directory
        (google_netapp_active_directory ?aes_encryption
           ?backup_operators ?description ?encrypt_dc_connections ?id
           ?kdc_hostname ?kdc_ip ?labels ?ldap_signing
           ?nfs_users_with_ldap ?organizational_unit ?project
           ?security_operators ?site ?timeouts ~dns ~domain ~location
           ~name ~net_bios_prefix ~password ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?aes_encryption ?backup_operators
    ?description ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip
    ?labels ?ldap_signing ?nfs_users_with_ldap ?organizational_unit
    ?project ?security_operators ?site ?timeouts ~dns ~domain
    ~location ~name ~net_bios_prefix ~password ~username __id =
  let (r : _ Tf_core.resource) =
    make ?aes_encryption ?backup_operators ?description
      ?encrypt_dc_connections ?id ?kdc_hostname ?kdc_ip ?labels
      ?ldap_signing ?nfs_users_with_ldap ?organizational_unit
      ?project ?security_operators ?site ?timeouts ~dns ~domain
      ~location ~name ~net_bios_prefix ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
