(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpclattice_auth_policy = {
  id : string prop option; [@option]
  policy : string prop option; [@option]
  resource_identifier : string prop;
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_auth_policy) -> ()

let yojson_of_aws_vpclattice_auth_policy =
  (function
   | {
       id = v_id;
       policy = v_policy;
       resource_identifier = v_resource_identifier;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_identifier
         in
         ("resource_identifier", arg) :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
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
    : aws_vpclattice_auth_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_auth_policy

[@@@deriving.end]

let aws_vpclattice_auth_policy ?id ?policy ?state
    ~resource_identifier () : aws_vpclattice_auth_policy =
  { id; policy; resource_identifier; state }

type t = {
  id : string prop;
  policy : string prop;
  resource_identifier : string prop;
  state : string prop;
}

let make ?id ?policy ?state ~resource_identifier __id =
  let __type = "aws_vpclattice_auth_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       resource_identifier =
         Prop.computed __type __id "resource_identifier";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_auth_policy
        (aws_vpclattice_auth_policy ?id ?policy ?state
           ~resource_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy ?state ~resource_identifier __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?policy ?state ~resource_identifier __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
