(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resources__dns_target_resource__target_resource__nlb_resource = {
  arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       resources__dns_target_resource__target_resource__nlb_resource) ->
  ()

let yojson_of_resources__dns_target_resource__target_resource__nlb_resource
    =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resources__dns_target_resource__target_resource__nlb_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_resources__dns_target_resource__target_resource__nlb_resource

[@@@deriving.end]

type resources__dns_target_resource__target_resource__r53_resource = {
  domain_name : string prop option; [@option]
  record_set_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       resources__dns_target_resource__target_resource__r53_resource) ->
  ()

let yojson_of_resources__dns_target_resource__target_resource__r53_resource
    =
  (function
   | { domain_name = v_domain_name; record_set_id = v_record_set_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_record_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resources__dns_target_resource__target_resource__r53_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_resources__dns_target_resource__target_resource__r53_resource

[@@@deriving.end]

type resources__dns_target_resource__target_resource = {
  nlb_resource :
    resources__dns_target_resource__target_resource__nlb_resource
    list;
  r53_resource :
    resources__dns_target_resource__target_resource__r53_resource
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : resources__dns_target_resource__target_resource) -> ()

let yojson_of_resources__dns_target_resource__target_resource =
  (function
   | { nlb_resource = v_nlb_resource; r53_resource = v_r53_resource }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_resources__dns_target_resource__target_resource__r53_resource
             v_r53_resource
         in
         ("r53_resource", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_resources__dns_target_resource__target_resource__nlb_resource
             v_nlb_resource
         in
         ("nlb_resource", arg) :: bnds
       in
       `Assoc bnds
    : resources__dns_target_resource__target_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources__dns_target_resource__target_resource

[@@@deriving.end]

type resources__dns_target_resource = {
  domain_name : string prop;
  hosted_zone_arn : string prop option; [@option]
  record_set_id : string prop option; [@option]
  record_type : string prop option; [@option]
  target_resource :
    resources__dns_target_resource__target_resource list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources__dns_target_resource) -> ()

let yojson_of_resources__dns_target_resource =
  (function
   | {
       domain_name = v_domain_name;
       hosted_zone_arn = v_hosted_zone_arn;
       record_set_id = v_record_set_id;
       record_type = v_record_type;
       target_resource = v_target_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_resources__dns_target_resource__target_resource
             v_target_resource
         in
         ("target_resource", arg) :: bnds
       in
       let bnds =
         match v_record_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hosted_zone_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hosted_zone_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : resources__dns_target_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources__dns_target_resource

[@@@deriving.end]

type resources = {
  readiness_scopes : string prop list option; [@option]
  resource_arn : string prop option; [@option]
  dns_target_resource : resources__dns_target_resource list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources) -> ()

let yojson_of_resources =
  (function
   | {
       readiness_scopes = v_readiness_scopes;
       resource_arn = v_resource_arn;
       dns_target_resource = v_dns_target_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_resources__dns_target_resource
             v_dns_target_resource
         in
         ("dns_target_resource", arg) :: bnds
       in
       let bnds =
         match v_resource_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_readiness_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "readiness_scopes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources

[@@@deriving.end]

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_route53recoveryreadiness_resource_set = {
  id : string prop option; [@option]
  resource_set_name : string prop;
  resource_set_type : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  resources : resources list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53recoveryreadiness_resource_set) -> ()

let yojson_of_aws_route53recoveryreadiness_resource_set =
  (function
   | {
       id = v_id;
       resource_set_name = v_resource_set_name;
       resource_set_type = v_resource_set_type;
       tags = v_tags;
       tags_all = v_tags_all;
       resources = v_resources;
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
         let arg = yojson_of_list yojson_of_resources v_resources in
         ("resources", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_set_type
         in
         ("resource_set_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_set_name
         in
         ("resource_set_name", arg) :: bnds
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
    : aws_route53recoveryreadiness_resource_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53recoveryreadiness_resource_set

[@@@deriving.end]

let resources__dns_target_resource__target_resource__nlb_resource
    ?arn () :
    resources__dns_target_resource__target_resource__nlb_resource =
  { arn }

let resources__dns_target_resource__target_resource__r53_resource
    ?domain_name ?record_set_id () :
    resources__dns_target_resource__target_resource__r53_resource =
  { domain_name; record_set_id }

let resources__dns_target_resource__target_resource ~nlb_resource
    ~r53_resource () :
    resources__dns_target_resource__target_resource =
  { nlb_resource; r53_resource }

let resources__dns_target_resource ?hosted_zone_arn ?record_set_id
    ?record_type ~domain_name ~target_resource () :
    resources__dns_target_resource =
  {
    domain_name;
    hosted_zone_arn;
    record_set_id;
    record_type;
    target_resource;
  }

let resources ?readiness_scopes ?resource_arn ~dns_target_resource ()
    : resources =
  { readiness_scopes; resource_arn; dns_target_resource }

let timeouts ?delete () : timeouts = { delete }

let aws_route53recoveryreadiness_resource_set ?id ?tags ?tags_all
    ?timeouts ~resource_set_name ~resource_set_type ~resources () :
    aws_route53recoveryreadiness_resource_set =
  {
    id;
    resource_set_name;
    resource_set_type;
    tags;
    tags_all;
    resources;
    timeouts;
  }

type t = {
  arn : string prop;
  id : string prop;
  resource_set_name : string prop;
  resource_set_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~resource_set_name
    ~resource_set_type ~resources __id =
  let __type = "aws_route53recoveryreadiness_resource_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       resource_set_name =
         Prop.computed __type __id "resource_set_name";
       resource_set_type =
         Prop.computed __type __id "resource_set_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoveryreadiness_resource_set
        (aws_route53recoveryreadiness_resource_set ?id ?tags
           ?tags_all ?timeouts ~resource_set_name ~resource_set_type
           ~resources ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~resource_set_name ~resource_set_type ~resources __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~resource_set_name
      ~resource_set_type ~resources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
