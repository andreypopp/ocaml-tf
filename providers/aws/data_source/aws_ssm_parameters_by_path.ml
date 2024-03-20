(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_parameters_by_path = {
  id : string prop option; [@option]
  path : string prop;
  recursive : bool prop option; [@option]
  with_decryption : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_parameters_by_path) -> ()

let yojson_of_aws_ssm_parameters_by_path =
  (function
   | {
       id = v_id;
       path = v_path;
       recursive = v_recursive;
       with_decryption = v_with_decryption;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_decryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_decryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recursive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recursive", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
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
    : aws_ssm_parameters_by_path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_parameters_by_path

[@@@deriving.end]

let aws_ssm_parameters_by_path ?id ?recursive ?with_decryption ~path
    () : aws_ssm_parameters_by_path =
  { id; path; recursive; with_decryption }

type t = {
  arns : string list prop;
  id : string prop;
  names : string list prop;
  path : string prop;
  recursive : bool prop;
  types : string list prop;
  values : string list prop;
  with_decryption : bool prop;
}

let make ?id ?recursive ?with_decryption ~path __id =
  let __type = "aws_ssm_parameters_by_path" in
  let __attrs =
    ({
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       path = Prop.computed __type __id "path";
       recursive = Prop.computed __type __id "recursive";
       types = Prop.computed __type __id "types";
       values = Prop.computed __type __id "values";
       with_decryption = Prop.computed __type __id "with_decryption";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_parameters_by_path
        (aws_ssm_parameters_by_path ?id ?recursive ?with_decryption
           ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?recursive ?with_decryption ~path __id =
  let (r : _ Tf_core.resource) =
    make ?id ?recursive ?with_decryption ~path __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
