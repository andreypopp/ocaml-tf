(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type constraints = {
  encryption_context_equals : (string * string prop) list option;
      [@option]
  encryption_context_subset : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : constraints) -> ()

let yojson_of_constraints =
  (function
   | {
       encryption_context_equals = v_encryption_context_equals;
       encryption_context_subset = v_encryption_context_subset;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_encryption_context_subset with
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
             let bnd = "encryption_context_subset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_context_equals with
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
             let bnd = "encryption_context_equals", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : constraints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_constraints

[@@@deriving.end]

type aws_kms_grant = {
  grant_creation_tokens : string prop list option; [@option]
  grantee_principal : string prop;
  id : string prop option; [@option]
  key_id : string prop;
  name : string prop option; [@option]
  operations : string prop list;
  retire_on_delete : bool prop option; [@option]
  retiring_principal : string prop option; [@option]
  constraints : constraints list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_grant) -> ()

let yojson_of_aws_kms_grant =
  (function
   | {
       grant_creation_tokens = v_grant_creation_tokens;
       grantee_principal = v_grantee_principal;
       id = v_id;
       key_id = v_key_id;
       name = v_name;
       operations = v_operations;
       retire_on_delete = v_retire_on_delete;
       retiring_principal = v_retiring_principal;
       constraints = v_constraints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_constraints v_constraints
         in
         ("constraints", arg) :: bnds
       in
       let bnds =
         match v_retiring_principal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retiring_principal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retire_on_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retire_on_delete", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_operations
         in
         ("operations", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_grantee_principal
         in
         ("grantee_principal", arg) :: bnds
       in
       let bnds =
         match v_grant_creation_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "grant_creation_tokens", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_grant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_grant

[@@@deriving.end]

let constraints ?encryption_context_equals ?encryption_context_subset
    () : constraints =
  { encryption_context_equals; encryption_context_subset }

let aws_kms_grant ?grant_creation_tokens ?id ?name ?retire_on_delete
    ?retiring_principal ~grantee_principal ~key_id ~operations
    ~constraints () : aws_kms_grant =
  {
    grant_creation_tokens;
    grantee_principal;
    id;
    key_id;
    name;
    operations;
    retire_on_delete;
    retiring_principal;
    constraints;
  }

type t = {
  tf_name : string;
  grant_creation_tokens : string list prop;
  grant_id : string prop;
  grant_token : string prop;
  grantee_principal : string prop;
  id : string prop;
  key_id : string prop;
  name : string prop;
  operations : string list prop;
  retire_on_delete : bool prop;
  retiring_principal : string prop;
}

let make ?grant_creation_tokens ?id ?name ?retire_on_delete
    ?retiring_principal ~grantee_principal ~key_id ~operations
    ~constraints __id =
  let __type = "aws_kms_grant" in
  let __attrs =
    ({
       tf_name = __id;
       grant_creation_tokens =
         Prop.computed __type __id "grant_creation_tokens";
       grant_id = Prop.computed __type __id "grant_id";
       grant_token = Prop.computed __type __id "grant_token";
       grantee_principal =
         Prop.computed __type __id "grantee_principal";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       name = Prop.computed __type __id "name";
       operations = Prop.computed __type __id "operations";
       retire_on_delete =
         Prop.computed __type __id "retire_on_delete";
       retiring_principal =
         Prop.computed __type __id "retiring_principal";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_grant
        (aws_kms_grant ?grant_creation_tokens ?id ?name
           ?retire_on_delete ?retiring_principal ~grantee_principal
           ~key_id ~operations ~constraints ());
    attrs = __attrs;
  }

let register ?tf_module ?grant_creation_tokens ?id ?name
    ?retire_on_delete ?retiring_principal ~grantee_principal ~key_id
    ~operations ~constraints __id =
  let (r : _ Tf_core.resource) =
    make ?grant_creation_tokens ?id ?name ?retire_on_delete
      ?retiring_principal ~grantee_principal ~key_id ~operations
      ~constraints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
