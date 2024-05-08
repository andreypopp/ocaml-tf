(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permitted_public_security_group_rule_range = {
  max_range : float prop;
  min_range : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permitted_public_security_group_rule_range) -> ()

let yojson_of_permitted_public_security_group_rule_range =
  (function
   | { max_range = v_max_range; min_range = v_min_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_range in
         ("min_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_range in
         ("max_range", arg) :: bnds
       in
       `Assoc bnds
    : permitted_public_security_group_rule_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permitted_public_security_group_rule_range

[@@@deriving.end]

type aws_emr_block_public_access_configuration = {
  block_public_security_group_rules : bool prop;
  id : string prop option; [@option]
  permitted_public_security_group_rule_range :
    permitted_public_security_group_rule_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_block_public_access_configuration) -> ()

let yojson_of_aws_emr_block_public_access_configuration =
  (function
   | {
       block_public_security_group_rules =
         v_block_public_security_group_rules;
       id = v_id;
       permitted_public_security_group_rule_range =
         v_permitted_public_security_group_rule_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_permitted_public_security_group_rule_range
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_permitted_public_security_group_rule_range)
               v_permitted_public_security_group_rule_range
           in
           let bnd =
             "permitted_public_security_group_rule_range", arg
           in
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_block_public_security_group_rules
         in
         ("block_public_security_group_rules", arg) :: bnds
       in
       `Assoc bnds
    : aws_emr_block_public_access_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_block_public_access_configuration

[@@@deriving.end]

let permitted_public_security_group_rule_range ~max_range ~min_range
    () : permitted_public_security_group_rule_range =
  { max_range; min_range }

let aws_emr_block_public_access_configuration ?id
    ?(permitted_public_security_group_rule_range = [])
    ~block_public_security_group_rules () :
    aws_emr_block_public_access_configuration =
  {
    block_public_security_group_rules;
    id;
    permitted_public_security_group_rule_range;
  }

type t = {
  tf_name : string;
  block_public_security_group_rules : bool prop;
  id : string prop;
}

let make ?id ?(permitted_public_security_group_rule_range = [])
    ~block_public_security_group_rules __id =
  let __type = "aws_emr_block_public_access_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       block_public_security_group_rules =
         Prop.computed __type __id
           "block_public_security_group_rules";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_block_public_access_configuration
        (aws_emr_block_public_access_configuration ?id
           ~permitted_public_security_group_rule_range
           ~block_public_security_group_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id
    ?(permitted_public_security_group_rule_range = [])
    ~block_public_security_group_rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ~permitted_public_security_group_rule_range
      ~block_public_security_group_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
