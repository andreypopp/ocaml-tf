(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connect_settings = {
  customer_dns_ips : string prop list;  (** customer_dns_ips *)
  customer_username : string prop;  (** customer_username *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** connect_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_settings = {
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** vpc_settings *)

type aws_directory_service_directory = {
  alias : string prop option; [@option]  (** alias *)
  description : string prop option; [@option]  (** description *)
  desired_number_of_domain_controllers : float prop option; [@option]
      (** desired_number_of_domain_controllers *)
  edition : string prop option; [@option]  (** edition *)
  enable_sso : bool prop option; [@option]  (** enable_sso *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  short_name : string prop option; [@option]  (** short_name *)
  size : string prop option; [@option]  (** size *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  connect_settings : connect_settings list;
  timeouts : timeouts option;
  vpc_settings : vpc_settings list;
}
[@@deriving yojson_of]
(** aws_directory_service_directory *)

let connect_settings ~customer_dns_ips ~customer_username ~subnet_ids
    ~vpc_id () : connect_settings =
  { customer_dns_ips; customer_username; subnet_ids; vpc_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_settings ~subnet_ids ~vpc_id () : vpc_settings =
  { subnet_ids; vpc_id }

let aws_directory_service_directory ?alias ?description
    ?desired_number_of_domain_controllers ?edition ?enable_sso ?id
    ?short_name ?size ?tags ?tags_all ?type_ ?timeouts ~name
    ~password ~connect_settings ~vpc_settings () :
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
    ?timeouts ~name ~password ~connect_settings ~vpc_settings __id =
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
           ?id ?short_name ?size ?tags ?tags_all ?type_ ?timeouts
           ~name ~password ~connect_settings ~vpc_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?description
    ?desired_number_of_domain_controllers ?edition ?enable_sso ?id
    ?short_name ?size ?tags ?tags_all ?type_ ?timeouts ~name
    ~password ~connect_settings ~vpc_settings __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?description ?desired_number_of_domain_controllers
      ?edition ?enable_sso ?id ?short_name ?size ?tags ?tags_all
      ?type_ ?timeouts ~name ~password ~connect_settings
      ~vpc_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
