(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_registry_access__ecr_image_puller_role = {
  is_active : bool prop option; [@option]  (** is_active *)
}
[@@deriving yojson_of]
(** private_registry_access__ecr_image_puller_role *)

type private_registry_access = {
  ecr_image_puller_role :
    private_registry_access__ecr_image_puller_role list;
}
[@@deriving yojson_of]
(** private_registry_access *)

type public_domain_names__certificate = {
  certificate_name : string prop;  (** certificate_name *)
  domain_names : string prop list;  (** domain_names *)
}
[@@deriving yojson_of]
(** public_domain_names__certificate *)

type public_domain_names = {
  certificate : public_domain_names__certificate list;
}
[@@deriving yojson_of]
(** public_domain_names *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lightsail_container_service = {
  id : string prop option; [@option]  (** id *)
  is_disabled : bool prop option; [@option]  (** is_disabled *)
  name : string prop;  (** name *)
  power : string prop;  (** power *)
  scale : float prop;  (** scale *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  private_registry_access : private_registry_access list;
  public_domain_names : public_domain_names list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lightsail_container_service *)

let private_registry_access__ecr_image_puller_role ?is_active () :
    private_registry_access__ecr_image_puller_role =
  { is_active }

let private_registry_access ~ecr_image_puller_role () :
    private_registry_access =
  { ecr_image_puller_role }

let public_domain_names__certificate ~certificate_name ~domain_names
    () : public_domain_names__certificate =
  { certificate_name; domain_names }

let public_domain_names ~certificate () : public_domain_names =
  { certificate }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lightsail_container_service ?id ?is_disabled ?tags ?tags_all
    ?timeouts ~name ~power ~scale ~private_registry_access
    ~public_domain_names () : aws_lightsail_container_service =
  {
    id;
    is_disabled;
    name;
    power;
    scale;
    tags;
    tags_all;
    private_registry_access;
    public_domain_names;
    timeouts;
  }

type t = {
  arn : string prop;
  availability_zone : string prop;
  created_at : string prop;
  id : string prop;
  is_disabled : bool prop;
  name : string prop;
  power : string prop;
  power_id : string prop;
  principal_arn : string prop;
  private_domain_name : string prop;
  resource_type : string prop;
  scale : float prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let make ?id ?is_disabled ?tags ?tags_all ?timeouts ~name ~power
    ~scale ~private_registry_access ~public_domain_names __id =
  let __type = "aws_lightsail_container_service" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       is_disabled = Prop.computed __type __id "is_disabled";
       name = Prop.computed __type __id "name";
       power = Prop.computed __type __id "power";
       power_id = Prop.computed __type __id "power_id";
       principal_arn = Prop.computed __type __id "principal_arn";
       private_domain_name =
         Prop.computed __type __id "private_domain_name";
       resource_type = Prop.computed __type __id "resource_type";
       scale = Prop.computed __type __id "scale";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_container_service
        (aws_lightsail_container_service ?id ?is_disabled ?tags
           ?tags_all ?timeouts ~name ~power ~scale
           ~private_registry_access ~public_domain_names ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_disabled ?tags ?tags_all ?timeouts
    ~name ~power ~scale ~private_registry_access ~public_domain_names
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_disabled ?tags ?tags_all ?timeouts ~name ~power
      ~scale ~private_registry_access ~public_domain_names __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
