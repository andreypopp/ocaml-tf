(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_registry_access__ecr_image_puller_role = {
  is_active : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : private_registry_access__ecr_image_puller_role) -> ()

let yojson_of_private_registry_access__ecr_image_puller_role =
  (function
   | { is_active = v_is_active } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_is_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : private_registry_access__ecr_image_puller_role ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_registry_access__ecr_image_puller_role

[@@@deriving.end]

type private_registry_access = {
  ecr_image_puller_role :
    private_registry_access__ecr_image_puller_role list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_registry_access) -> ()

let yojson_of_private_registry_access =
  (function
   | { ecr_image_puller_role = v_ecr_image_puller_role } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ecr_image_puller_role then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_private_registry_access__ecr_image_puller_role)
               v_ecr_image_puller_role
           in
           let bnd = "ecr_image_puller_role", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : private_registry_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_registry_access

[@@@deriving.end]

type public_domain_names__certificate = {
  certificate_name : string prop;
  domain_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_domain_names__certificate) -> ()

let yojson_of_public_domain_names__certificate =
  (function
   | {
       certificate_name = v_certificate_name;
       domain_names = v_domain_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_domain_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_domain_names
           in
           let bnd = "domain_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_name
         in
         ("certificate_name", arg) :: bnds
       in
       `Assoc bnds
    : public_domain_names__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_domain_names__certificate

[@@@deriving.end]

type public_domain_names = {
  certificate : public_domain_names__certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_domain_names) -> ()

let yojson_of_public_domain_names =
  (function
   | { certificate = v_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_certificate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_public_domain_names__certificate)
               v_certificate
           in
           let bnd = "certificate", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : public_domain_names -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_domain_names

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

type aws_lightsail_container_service = {
  id : string prop option; [@option]
  is_disabled : bool prop option; [@option]
  name : string prop;
  power : string prop;
  scale : float prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  private_registry_access : private_registry_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_domain_names : public_domain_names list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_container_service) -> ()

let yojson_of_aws_lightsail_container_service =
  (function
   | {
       id = v_id;
       is_disabled = v_is_disabled;
       name = v_name;
       power = v_power;
       scale = v_scale;
       tags = v_tags;
       tags_all = v_tags_all;
       private_registry_access = v_private_registry_access;
       public_domain_names = v_public_domain_names;
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
         if Stdlib.( = ) [] v_public_domain_names then bnds
         else
           let arg =
             (yojson_of_list yojson_of_public_domain_names)
               v_public_domain_names
           in
           let bnd = "public_domain_names", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_registry_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_registry_access)
               v_private_registry_access
           in
           let bnd = "private_registry_access", arg in
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
         let arg = yojson_of_prop yojson_of_float v_scale in
         ("scale", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_power in
         ("power", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_disabled", arg in
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
       `Assoc bnds
    : aws_lightsail_container_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_container_service

[@@@deriving.end]

let private_registry_access__ecr_image_puller_role ?is_active () :
    private_registry_access__ecr_image_puller_role =
  { is_active }

let private_registry_access ?(ecr_image_puller_role = []) () :
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
    ?(private_registry_access = []) ?(public_domain_names = [])
    ?timeouts ~name ~power ~scale () :
    aws_lightsail_container_service =
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
  tf_name : string;
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

let make ?id ?is_disabled ?tags ?tags_all
    ?(private_registry_access = []) ?(public_domain_names = [])
    ?timeouts ~name ~power ~scale __id =
  let __type = "aws_lightsail_container_service" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags_all ~private_registry_access ~public_domain_names
           ?timeouts ~name ~power ~scale ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_disabled ?tags ?tags_all
    ?(private_registry_access = []) ?(public_domain_names = [])
    ?timeouts ~name ~power ~scale __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_disabled ?tags ?tags_all ~private_registry_access
      ~public_domain_names ?timeouts ~name ~power ~scale __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
