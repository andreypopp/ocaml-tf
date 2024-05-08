(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type organization_configuration = {
  configuration_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : organization_configuration) -> ()

let yojson_of_organization_configuration =
  (function
   | { configuration_type = v_configuration_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_type
         in
         ("configuration_type", arg) :: bnds
       in
       `Assoc bnds
    : organization_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_organization_configuration

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

type aws_securityhub_organization_configuration = {
  auto_enable : bool prop;
  auto_enable_standards : string prop option; [@option]
  id : string prop option; [@option]
  organization_configuration : organization_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_organization_configuration) -> ()

let yojson_of_aws_securityhub_organization_configuration =
  (function
   | {
       auto_enable = v_auto_enable;
       auto_enable_standards = v_auto_enable_standards;
       id = v_id;
       organization_configuration = v_organization_configuration;
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
         if Stdlib.( = ) [] v_organization_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_organization_configuration)
               v_organization_configuration
           in
           let bnd = "organization_configuration", arg in
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
         match v_auto_enable_standards with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_enable_standards", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_enable in
         ("auto_enable", arg) :: bnds
       in
       `Assoc bnds
    : aws_securityhub_organization_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_organization_configuration

[@@@deriving.end]

let organization_configuration ~configuration_type () :
    organization_configuration =
  { configuration_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_securityhub_organization_configuration ?auto_enable_standards
    ?id ?(organization_configuration = []) ?timeouts ~auto_enable ()
    : aws_securityhub_organization_configuration =
  {
    auto_enable;
    auto_enable_standards;
    id;
    organization_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_enable : bool prop;
  auto_enable_standards : string prop;
  id : string prop;
}

let make ?auto_enable_standards ?id
    ?(organization_configuration = []) ?timeouts ~auto_enable __id =
  let __type = "aws_securityhub_organization_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       auto_enable = Prop.computed __type __id "auto_enable";
       auto_enable_standards =
         Prop.computed __type __id "auto_enable_standards";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_organization_configuration
        (aws_securityhub_organization_configuration
           ?auto_enable_standards ?id ~organization_configuration
           ?timeouts ~auto_enable ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_enable_standards ?id
    ?(organization_configuration = []) ?timeouts ~auto_enable __id =
  let (r : _ Tf_core.resource) =
    make ?auto_enable_standards ?id ~organization_configuration
      ?timeouts ~auto_enable __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
