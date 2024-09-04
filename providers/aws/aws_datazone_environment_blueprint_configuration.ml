(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datazone_environment_blueprint_configuration = {
  domain_id : string prop;
  enabled_regions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment_blueprint_id : string prop;
  manage_access_role_arn : string prop option; [@option]
  provisioning_role_arn : string prop option; [@option]
  regional_parameters :
    string prop Tf_core.assoc Tf_core.assoc option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_datazone_environment_blueprint_configuration) -> ()

let yojson_of_aws_datazone_environment_blueprint_configuration =
  (function
   | {
       domain_id = v_domain_id;
       enabled_regions = v_enabled_regions;
       environment_blueprint_id = v_environment_blueprint_id;
       manage_access_role_arn = v_manage_access_role_arn;
       provisioning_role_arn = v_provisioning_role_arn;
       regional_parameters = v_regional_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regional_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (Tf_core.yojson_of_assoc
                    (yojson_of_prop yojson_of_string))
                 v
             in
             let bnd = "regional_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioning_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provisioning_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manage_access_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manage_access_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_blueprint_id
         in
         ("environment_blueprint_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_enabled_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_enabled_regions
           in
           let bnd = "enabled_regions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_id in
         ("domain_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_datazone_environment_blueprint_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datazone_environment_blueprint_configuration

[@@@deriving.end]

let aws_datazone_environment_blueprint_configuration
    ?manage_access_role_arn ?provisioning_role_arn
    ?regional_parameters ~domain_id ~enabled_regions
    ~environment_blueprint_id () :
    aws_datazone_environment_blueprint_configuration =
  {
    domain_id;
    enabled_regions;
    environment_blueprint_id;
    manage_access_role_arn;
    provisioning_role_arn;
    regional_parameters;
  }

type t = {
  tf_name : string;
  domain_id : string prop;
  enabled_regions : string list prop;
  environment_blueprint_id : string prop;
  manage_access_role_arn : string prop;
  provisioning_role_arn : string prop;
  regional_parameters : string Tf_core.assoc Tf_core.assoc prop;
}

let make ?manage_access_role_arn ?provisioning_role_arn
    ?regional_parameters ~domain_id ~enabled_regions
    ~environment_blueprint_id __id =
  let __type = "aws_datazone_environment_blueprint_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       domain_id = Prop.computed __type __id "domain_id";
       enabled_regions = Prop.computed __type __id "enabled_regions";
       environment_blueprint_id =
         Prop.computed __type __id "environment_blueprint_id";
       manage_access_role_arn =
         Prop.computed __type __id "manage_access_role_arn";
       provisioning_role_arn =
         Prop.computed __type __id "provisioning_role_arn";
       regional_parameters =
         Prop.computed __type __id "regional_parameters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datazone_environment_blueprint_configuration
        (aws_datazone_environment_blueprint_configuration
           ?manage_access_role_arn ?provisioning_role_arn
           ?regional_parameters ~domain_id ~enabled_regions
           ~environment_blueprint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?manage_access_role_arn
    ?provisioning_role_arn ?regional_parameters ~domain_id
    ~enabled_regions ~environment_blueprint_id __id =
  let (r : _ Tf_core.resource) =
    make ?manage_access_role_arn ?provisioning_role_arn
      ?regional_parameters ~domain_id ~enabled_regions
      ~environment_blueprint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
