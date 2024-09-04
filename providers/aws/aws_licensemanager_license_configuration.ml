(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_licensemanager_license_configuration = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  license_count : float prop option; [@option]
  license_count_hard_limit : bool prop option; [@option]
  license_counting_type : string prop;
  license_rules : string prop list option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_licensemanager_license_configuration) -> ()

let yojson_of_aws_licensemanager_license_configuration =
  (function
   | {
       description = v_description;
       id = v_id;
       license_count = v_license_count;
       license_count_hard_limit = v_license_count_hard_limit;
       license_counting_type = v_license_counting_type;
       license_rules = v_license_rules;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_license_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "license_rules", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_license_counting_type
         in
         ("license_counting_type", arg) :: bnds
       in
       let bnds =
         match v_license_count_hard_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "license_count_hard_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "license_count", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_licensemanager_license_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_licensemanager_license_configuration

[@@@deriving.end]

let aws_licensemanager_license_configuration ?description ?id
    ?license_count ?license_count_hard_limit ?license_rules ?tags
    ?tags_all ~license_counting_type ~name () :
    aws_licensemanager_license_configuration =
  {
    description;
    id;
    license_count;
    license_count_hard_limit;
    license_counting_type;
    license_rules;
    name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  license_count : float prop;
  license_count_hard_limit : bool prop;
  license_counting_type : string prop;
  license_rules : string list prop;
  name : string prop;
  owner_account_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?id ?license_count ?license_count_hard_limit
    ?license_rules ?tags ?tags_all ~license_counting_type ~name __id
    =
  let __type = "aws_licensemanager_license_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       license_count = Prop.computed __type __id "license_count";
       license_count_hard_limit =
         Prop.computed __type __id "license_count_hard_limit";
       license_counting_type =
         Prop.computed __type __id "license_counting_type";
       license_rules = Prop.computed __type __id "license_rules";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_licensemanager_license_configuration
        (aws_licensemanager_license_configuration ?description ?id
           ?license_count ?license_count_hard_limit ?license_rules
           ?tags ?tags_all ~license_counting_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?license_count
    ?license_count_hard_limit ?license_rules ?tags ?tags_all
    ~license_counting_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?license_count ?license_count_hard_limit
      ?license_rules ?tags ?tags_all ~license_counting_type ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
