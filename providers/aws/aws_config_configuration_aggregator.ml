(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type account_aggregation_source = {
  account_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  all_regions : bool prop option; [@option]
  regions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : account_aggregation_source) -> ()

let yojson_of_account_aggregation_source =
  (function
   | {
       account_ids = v_account_ids;
       all_regions = v_all_regions;
       regions = v_regions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_regions", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_account_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_account_ids
           in
           let bnd = "account_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : account_aggregation_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_account_aggregation_source

[@@@deriving.end]

type organization_aggregation_source = {
  all_regions : bool prop option; [@option]
  regions : string prop list option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : organization_aggregation_source) -> ()

let yojson_of_organization_aggregation_source =
  (function
   | {
       all_regions = v_all_regions;
       regions = v_regions;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_regions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : organization_aggregation_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_organization_aggregation_source

[@@@deriving.end]

type aws_config_configuration_aggregator = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  account_aggregation_source : account_aggregation_source list;
      [@default []] [@yojson_drop_default ( = )]
  organization_aggregation_source :
    organization_aggregation_source list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_configuration_aggregator) -> ()

let yojson_of_aws_config_configuration_aggregator =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       account_aggregation_source = v_account_aggregation_source;
       organization_aggregation_source =
         v_organization_aggregation_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_organization_aggregation_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_organization_aggregation_source)
               v_organization_aggregation_source
           in
           let bnd = "organization_aggregation_source", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_account_aggregation_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_account_aggregation_source)
               v_account_aggregation_source
           in
           let bnd = "account_aggregation_source", arg in
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
       `Assoc bnds
    : aws_config_configuration_aggregator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_configuration_aggregator

[@@@deriving.end]

let account_aggregation_source ?all_regions ?regions ~account_ids ()
    : account_aggregation_source =
  { account_ids; all_regions; regions }

let organization_aggregation_source ?all_regions ?regions ~role_arn
    () : organization_aggregation_source =
  { all_regions; regions; role_arn }

let aws_config_configuration_aggregator ?id ?tags ?tags_all
    ?(account_aggregation_source = [])
    ?(organization_aggregation_source = []) ~name () :
    aws_config_configuration_aggregator =
  {
    id;
    name;
    tags;
    tags_all;
    account_aggregation_source;
    organization_aggregation_source;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(account_aggregation_source = [])
    ?(organization_aggregation_source = []) ~name __id =
  let __type = "aws_config_configuration_aggregator" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_configuration_aggregator
        (aws_config_configuration_aggregator ?id ?tags ?tags_all
           ~account_aggregation_source
           ~organization_aggregation_source ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(account_aggregation_source = [])
    ?(organization_aggregation_source = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~account_aggregation_source
      ~organization_aggregation_source ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
