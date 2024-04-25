(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connect_settings = {
  customer_dns_ips : string prop list;
  customer_username : string prop;
  subnet_ids : string prop list;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connect_settings) -> ()

let yojson_of_connect_settings =
  (function
   | {
       customer_dns_ips = v_customer_dns_ips;
       customer_username = v_customer_username;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_customer_username
         in
         ("customer_username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_customer_dns_ips
         in
         ("customer_dns_ips", arg) :: bnds
       in
       `Assoc bnds
    : connect_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connect_settings

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

type vpc_settings = {
  subnet_ids : string prop list;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_settings) -> ()

let yojson_of_vpc_settings =
  (function
   | { subnet_ids = v_subnet_ids; vpc_id = v_vpc_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       `Assoc bnds
    : vpc_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_settings

[@@@deriving.end]

type aws_directory_service_directory = {
  alias : string prop option; [@option]
  description : string prop option; [@option]
  desired_number_of_domain_controllers : float prop option; [@option]
  edition : string prop option; [@option]
  enable_sso : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  password : string prop;
  short_name : string prop option; [@option]
  size : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  connect_settings : connect_settings list;
  timeouts : timeouts option;
  vpc_settings : vpc_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_directory) -> ()

let yojson_of_aws_directory_service_directory =
  (function
   | {
       alias = v_alias;
       description = v_description;
       desired_number_of_domain_controllers =
         v_desired_number_of_domain_controllers;
       edition = v_edition;
       enable_sso = v_enable_sso;
       id = v_id;
       name = v_name;
       password = v_password;
       short_name = v_short_name;
       size = v_size;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       connect_settings = v_connect_settings;
       timeouts = v_timeouts;
       vpc_settings = v_vpc_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_settings v_vpc_settings
         in
         ("vpc_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_connect_settings
             v_connect_settings
         in
         ("connect_settings", arg) :: bnds
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
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_short_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "short_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_enable_sso with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_sso", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_number_of_domain_controllers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_number_of_domain_controllers", arg in
             bnd :: bnds
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
         match v_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alias", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_directory_service_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_directory

[@@@deriving.end]

let connect_settings ~customer_dns_ips ~customer_username ~subnet_ids
    ~vpc_id () : connect_settings =
  { customer_dns_ips; customer_username; subnet_ids; vpc_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_settings ~subnet_ids ~vpc_id () : vpc_settings =
  { subnet_ids; vpc_id }

let aws_directory_service_directory ?alias ?description
    ?desired_number_of_domain_controllers ?edition ?enable_sso ?id
    ?short_name ?size ?tags ?tags_all ?type_ ?(connect_settings = [])
    ?timeouts ?(vpc_settings = []) ~name ~password () :
    aws_directory_service_directory =
  {
    alias;
    description;
    desired_number_of_domain_controllers;
    edition;
    enable_sso;
    id;
    name;
    password;
    short_name;
    size;
    tags;
    tags_all;
    type_;
    connect_settings;
    timeouts;
    vpc_settings;
  }

type t = {
  access_url : string prop;
  alias : string prop;
  description : string prop;
  desired_number_of_domain_controllers : float prop;
  dns_ip_addresses : string list prop;
  edition : string prop;
  enable_sso : bool prop;
  id : string prop;
  name : string prop;
  password : string prop;
  security_group_id : string prop;
  short_name : string prop;
  size : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?alias ?description ?desired_number_of_domain_controllers
    ?edition ?enable_sso ?id ?short_name ?size ?tags ?tags_all ?type_
    ?(connect_settings = []) ?timeouts ?(vpc_settings = []) ~name
    ~password __id =
  let __type = "aws_directory_service_directory" in
  let __attrs =
    ({
       access_url = Prop.computed __type __id "access_url";
       alias = Prop.computed __type __id "alias";
       description = Prop.computed __type __id "description";
       desired_number_of_domain_controllers =
         Prop.computed __type __id
           "desired_number_of_domain_controllers";
       dns_ip_addresses =
         Prop.computed __type __id "dns_ip_addresses";
       edition = Prop.computed __type __id "edition";
       enable_sso = Prop.computed __type __id "enable_sso";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       short_name = Prop.computed __type __id "short_name";
       size = Prop.computed __type __id "size";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_directory
        (aws_directory_service_directory ?alias ?description
           ?desired_number_of_domain_controllers ?edition ?enable_sso
           ?id ?short_name ?size ?tags ?tags_all ?type_
           ~connect_settings ?timeouts ~vpc_settings ~name ~password
           ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?description
    ?desired_number_of_domain_controllers ?edition ?enable_sso ?id
    ?short_name ?size ?tags ?tags_all ?type_ ?(connect_settings = [])
    ?timeouts ?(vpc_settings = []) ~name ~password __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?description ?desired_number_of_domain_controllers
      ?edition ?enable_sso ?id ?short_name ?size ?tags ?tags_all
      ?type_ ~connect_settings ?timeouts ~vpc_settings ~name
      ~password __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
