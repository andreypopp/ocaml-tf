(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_directory_service_region = {
  desired_number_of_domain_controllers : float prop option; [@option]
      (** desired_number_of_domain_controllers *)
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  region_name : string prop;  (** region_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
  vpc_settings : vpc_settings list;
}
[@@deriving yojson_of]
(** aws_directory_service_region *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_settings ~subnet_ids ~vpc_id () : vpc_settings =
  { subnet_ids; vpc_id }

let aws_directory_service_region
    ?desired_number_of_domain_controllers ?id ?tags ?tags_all
    ?timeouts ~directory_id ~region_name ~vpc_settings () :
    aws_directory_service_region =
  {
    desired_number_of_domain_controllers;
    directory_id;
    id;
    region_name;
    tags;
    tags_all;
    timeouts;
    vpc_settings;
  }

type t = {
  desired_number_of_domain_controllers : float prop;
  directory_id : string prop;
  id : string prop;
  region_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?desired_number_of_domain_controllers ?id ?tags ?tags_all
    ?timeouts ~directory_id ~region_name ~vpc_settings __id =
  let __type = "aws_directory_service_region" in
  let __attrs =
    ({
       desired_number_of_domain_controllers =
         Prop.computed __type __id
           "desired_number_of_domain_controllers";
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       region_name = Prop.computed __type __id "region_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_region
        (aws_directory_service_region
           ?desired_number_of_domain_controllers ?id ?tags ?tags_all
           ?timeouts ~directory_id ~region_name ~vpc_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?desired_number_of_domain_controllers ?id
    ?tags ?tags_all ?timeouts ~directory_id ~region_name
    ~vpc_settings __id =
  let (r : _ Tf_core.resource) =
    make ?desired_number_of_domain_controllers ?id ?tags ?tags_all
      ?timeouts ~directory_id ~region_name ~vpc_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
