(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules = { pattern : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | { pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type github_branch_protection_rules = {
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_branch_protection_rules) -> ()

let yojson_of_github_branch_protection_rules =
  (function
   | { id = v_id; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
    : github_branch_protection_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_branch_protection_rules

[@@@deriving.end]

let github_branch_protection_rules ?id ~repository () :
    github_branch_protection_rules =
  { id; repository }

type t = {
  tf_name : string;
  id : string prop;
  repository : string prop;
  rules : rules list prop;
}

let make ?id ~repository __id =
  let __type = "github_branch_protection_rules" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
       rules = Prop.computed __type __id "rules";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_branch_protection_rules
        (github_branch_protection_rules ?id ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~repository __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
