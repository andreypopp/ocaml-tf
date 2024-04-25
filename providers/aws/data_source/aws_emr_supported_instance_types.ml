(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type supported_instance_types = unit [@@deriving_inline yojson_of]

let _ = fun (_ : supported_instance_types) -> ()

let yojson_of_supported_instance_types =
  (yojson_of_unit
    : supported_instance_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_supported_instance_types

[@@@deriving.end]

type aws_emr_supported_instance_types = {
  release_label : string prop;
  supported_instance_types : supported_instance_types list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_supported_instance_types) -> ()

let yojson_of_aws_emr_supported_instance_types =
  (function
   | {
       release_label = v_release_label;
       supported_instance_types = v_supported_instance_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_supported_instance_types
             v_supported_instance_types
         in
         ("supported_instance_types", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_release_label in
         ("release_label", arg) :: bnds
       in
       `Assoc bnds
    : aws_emr_supported_instance_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_supported_instance_types

[@@@deriving.end]

let supported_instance_types () = ()

let aws_emr_supported_instance_types ?(supported_instance_types = [])
    ~release_label () : aws_emr_supported_instance_types =
  { release_label; supported_instance_types }

type t = { id : string prop; release_label : string prop }

let make ?(supported_instance_types = []) ~release_label __id =
  let __type = "aws_emr_supported_instance_types" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       release_label = Prop.computed __type __id "release_label";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_supported_instance_types
        (aws_emr_supported_instance_types ~supported_instance_types
           ~release_label ());
    attrs = __attrs;
  }

let register ?tf_module ?(supported_instance_types = [])
    ~release_label __id =
  let (r : _ Tf_core.resource) =
    make ~supported_instance_types ~release_label __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
