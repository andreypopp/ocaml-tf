(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?is_disabled ?tags ?tags_all ?timeouts
    ~name ~power ~scale ~private_registry_access ~public_domain_names
    __resource_id =
  let __resource_type = "aws_lightsail_container_service" in
  let __resource =
    aws_lightsail_container_service ?id ?is_disabled ?tags ?tags_all
      ?timeouts ~name ~power ~scale ~private_registry_access
      ~public_domain_names ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_container_service __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       is_disabled =
         Prop.computed __resource_type __resource_id "is_disabled";
       name = Prop.computed __resource_type __resource_id "name";
       power = Prop.computed __resource_type __resource_id "power";
       power_id =
         Prop.computed __resource_type __resource_id "power_id";
       principal_arn =
         Prop.computed __resource_type __resource_id "principal_arn";
       private_domain_name =
         Prop.computed __resource_type __resource_id
           "private_domain_name";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
       scale = Prop.computed __resource_type __resource_id "scale";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
