(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_generic_endpoint = {
  data_json : string prop;
  disable_delete : bool prop option; [@option]
  disable_read : bool prop option; [@option]
  id : string prop option; [@option]
  ignore_absent_fields : bool prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
  write_fields : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_generic_endpoint) -> ()

let yojson_of_vault_generic_endpoint =
  (function
   | {
       data_json = v_data_json;
       disable_delete = v_disable_delete;
       disable_read = v_disable_read;
       id = v_id;
       ignore_absent_fields = v_ignore_absent_fields;
       namespace = v_namespace;
       path = v_path;
       write_fields = v_write_fields;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_write_fields with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "write_fields", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ignore_absent_fields with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "ignore_absent_fields", arg in
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
       match v_disable_read with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_read", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_delete with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_delete", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_data_json in
       ("data_json", arg) :: bnds
     in
     `Assoc bnds
    : vault_generic_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_generic_endpoint

[@@@deriving.end]

let vault_generic_endpoint ?disable_delete ?disable_read ?id ?ignore_absent_fields ?namespace ?write_fields ~data_json
  ~path () =
  ({ data_json; disable_delete; disable_read; id; ignore_absent_fields; namespace; path; write_fields }
    : vault_generic_endpoint)

type t = {
  tf_name : string;
  data_json : string prop;
  disable_delete : bool prop;
  disable_read : bool prop;
  id : string prop;
  ignore_absent_fields : bool prop;
  namespace : string prop;
  path : string prop;
  write_data : string Tf_core.assoc prop;
  write_data_json : string prop;
  write_fields : string list prop;
}

let make ?disable_delete ?disable_read ?id ?ignore_absent_fields ?namespace ?write_fields ~data_json ~path __id =
  let __type = "vault_generic_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       data_json = Prop.computed __type __id "data_json";
       disable_delete = Prop.computed __type __id "disable_delete";
       disable_read = Prop.computed __type __id "disable_read";
       id = Prop.computed __type __id "id";
       ignore_absent_fields = Prop.computed __type __id "ignore_absent_fields";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       write_data = Prop.computed __type __id "write_data";
       write_data_json = Prop.computed __type __id "write_data_json";
       write_fields = Prop.computed __type __id "write_fields";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_generic_endpoint
        (vault_generic_endpoint ?disable_delete ?disable_read ?id ?ignore_absent_fields ?namespace ?write_fields
           ~data_json ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_delete ?disable_read ?id ?ignore_absent_fields ?namespace ?write_fields ~data_json
  ~path __id =
  let (r : _ Tf_core.resource) =
    make ?disable_delete ?disable_read ?id ?ignore_absent_fields ?namespace ?write_fields ~data_json ~path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
