(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type voices = unit [@@deriving_inline yojson_of]

let _ = fun (_ : voices) -> ()

let yojson_of_voices =
  (yojson_of_unit : voices -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_voices

[@@@deriving.end]

type aws_polly_voices = {
  engine : string prop option; [@option]
  include_additional_language_codes : bool prop option; [@option]
  language_code : string prop option; [@option]
  voices : voices list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_polly_voices) -> ()

let yojson_of_aws_polly_voices =
  (function
   | {
       engine = v_engine;
       include_additional_language_codes =
         v_include_additional_language_codes;
       language_code = v_language_code;
       voices = v_voices;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_voices then bnds
         else
           let arg = (yojson_of_list yojson_of_voices) v_voices in
           let bnd = "voices", arg in
           bnd :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_additional_language_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_additional_language_codes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_polly_voices -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_polly_voices

[@@@deriving.end]

let voices () = ()

let aws_polly_voices ?engine ?include_additional_language_codes
    ?language_code ?(voices = []) () : aws_polly_voices =
  {
    engine;
    include_additional_language_codes;
    language_code;
    voices;
  }

type t = {
  tf_name : string;
  engine : string prop;
  id : string prop;
  include_additional_language_codes : bool prop;
  language_code : string prop;
}

let make ?engine ?include_additional_language_codes ?language_code
    ?(voices = []) __id =
  let __type = "aws_polly_voices" in
  let __attrs =
    ({
       tf_name = __id;
       engine = Prop.computed __type __id "engine";
       id = Prop.computed __type __id "id";
       include_additional_language_codes =
         Prop.computed __type __id
           "include_additional_language_codes";
       language_code = Prop.computed __type __id "language_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_polly_voices
        (aws_polly_voices ?engine ?include_additional_language_codes
           ?language_code ~voices ());
    attrs = __attrs;
  }

let register ?tf_module ?engine ?include_additional_language_codes
    ?language_code ?(voices = []) __id =
  let (r : _ Tf_core.resource) =
    make ?engine ?include_additional_language_codes ?language_code
      ~voices __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
