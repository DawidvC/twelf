(* Poly/ML specific -- no gc field in CPU time *)
use "src/timing/timing-polyml.sml";
use "src/timing/timers.sig";
use "src/timing/timers.fun";
use "src/timing/timers.sml";
use "src/stream/stream.sml";
use "src/global/global.sig";
use "src/global/global.sml";
use "src/table/table.sig";
use "src/table/hash-table.sml";
use "src/table/string-hash.sig";
use "src/table/string-hash.sml";
use "src/table/red-black-tree.fun";
use "src/table/sparse-array.sig";
use "src/table/sparse-array.fun";
use "src/table/sparse-array2.sig";
use "src/table/sparse-array2.fun";
use "src/table/table.sml";
use "src/lambda/fgnopn.sig";
use "src/lambda/fgnopntable.fun";
use "src/lambda/intsyn.sig";
use "src/lambda/intsyn.fun";
use "src/trail/trail.sig";
use "src/trail/notrail.sml";
use "src/trail/trail.sml";
use "src/lambda/whnf.sig";
use "src/lambda/whnf.fun";
use "src/lambda/conv.sig";
use "src/lambda/conv.fun";
use "src/lambda/constraints.sig";
use "src/lambda/constraints.fun";
use "src/lambda/unify.sig";
use "src/lambda/unify.fun";
use "src/lambda/abstract.sig";
use "src/lambda/abstract.fun";
use "src/lambda/approx.sig";
use "src/lambda/approx.fun";
use "src/lambda/lambda.sml";
use "src/names/names.sig";
use "src/names/names.fun";
use "src/names/names.sml";
use "src/paths/paths.sig";
use "src/paths/paths.fun";
use "src/paths/origins.sig";
use "src/paths/origins.fun";
use "src/paths/paths.sml";
use "src/formatter/formatter.sig";
use "src/formatter/formatter.fun";
use "src/formatter/formatter.sml";
use "src/print/print-twega.sig";
use "src/print/print-twega.fun";
use "src/print/symbol.sig";
use "src/print/symbol.fun";
use "src/print/print.sig";
use "src/print/print.fun";
use "src/print/clause-print.sig";
use "src/print/clause-print.fun";
use "src/print/print.sml";
use "src/typecheck/strict.sig";
use "src/typecheck/strict.fun";
use "src/typecheck/typecheck.sig";
use "src/typecheck/typecheck.fun";
use "src/typecheck/typecheck.sml";
use "src/table/queue.sig";
use "src/table/queue.sml";
use "src/index/index.sig";
use "src/index/index.fun";
use "src/index/index-skolem.fun";
use "src/index/index.sml";
use "src/modes/modesyn.sig";
use "src/modes/modesyn.fun";
use "src/modes/modedec.sig";
use "src/modes/modedec.fun";
use "src/modes/modecheck.sig";
use "src/modes/modecheck.fun";
use "src/modes/modeprint.sig";
use "src/modes/modeprint.fun";
use "src/modes/modes.sml";
use "src/tabling/tabledsyn.sig";
use "src/tabling/tabledsyn.fun";
use "src/tabling/tabled.sml";
use "src/subordinate/intset.sml";
use "src/subordinate/subordinate.sig";
use "src/subordinate/subordinate.fun";
use "src/subordinate/subordinate.sml";
use "src/solvers/cs-manager.sig";
use "src/solvers/cs-manager.fun";
(* Standard Library in Poly/ML *)
(*
use "src/int-inf/int-inf-sig.sml";
use "src/int-inf/int-inf.sml";
*)
use "src/domains/integers.sig";
use "src/domains/integers.fun";
use "src/domains/field.sig";
use "src/domains/ordered-field.sig";
use "src/domains/rationals.sig";
use "src/domains/rationals.fun";
use "src/domains/integers-mod.fun";
use "src/domains/domains.sml";
use "src/solvers/cs.sig";
use "src/solvers/cs-eq-field.sig";
use "src/solvers/cs-eq-field.fun";
use "src/solvers/cs-ineq-field.fun";
use "src/solvers/cs-eq-strings.fun";
use "src/solvers/cs-eq-bools.fun";
use "src/solvers/cs-eq-integers.sig";
use "src/solvers/cs-eq-integers.fun";
use "src/solvers/cs-ineq-integers.fun";
use "src/solvers/cs-integers-word.fun";
use "src/solvers/solvers.sml";
use "src/order/order.sig";
use "src/order/order.fun";
use "src/order/order.sml";
use "src/terminate/checking.sig";
use "src/terminate/checking.fun";
use "src/terminate/reduces.sig";
use "src/terminate/reduces.fun";
use "src/terminate/terminate.sml";
use "src/thm/thmsyn.sig";
use "src/thm/thmsyn.fun";
use "src/thm/thmprint.sig";
use "src/thm/thmprint.fun";
use "src/thm/thm.sig";
use "src/thm/thm.fun";
use "src/thm/thm.sml";
use "src/compile/compsyn.sig";
use "src/compile/compsyn.fun";
use "src/compile/cprint.sig";
use "src/compile/cprint.fun";
use "src/compile/compile.sig";
use "src/compile/compile.fun";
use "src/compile/assign.sig";
use "src/compile/assign.fun";
use "src/compile/compile.sml";
use "src/opsem/absmachine.sig";
use "src/opsem/absmachine.fun";
use "src/opsem/ptrecon.sig";
use "src/opsem/ptrecon.fun";
use "src/opsem/abstract.sig";
use "src/opsem/abstract.fun";
use "src/opsem/index.sig";
use "src/opsem/index.fun";
use "src/opsem/tabled.sig";
use "src/opsem/tabled.fun";
use "src/opsem/trace.sig";
use "src/opsem/trace.fun";
use "src/opsem/tmachine.fun";
use "src/opsem/swmachine.fun";
use "src/opsem/opsem.sml";
use "src/m2/meta-global.sig";
use "src/m2/meta-global.sml";
use "src/table/ring.sig";
use "src/table/ring.sml";
use "src/m2/metasyn.sig";
use "src/m2/metasyn.fun";
use "src/m2/meta-abstract.sig";
use "src/m2/meta-abstract.fun";
use "src/m2/meta-print.sig";
use "src/m2/meta-print.fun";
use "src/m2/init.sig";
use "src/m2/init.fun";
use "src/m2/search.sig";
use "src/m2/search.fun";
use "src/m2/lemma.sig";
use "src/m2/lemma.fun";
use "src/m2/splitting.sig";
use "src/m2/splitting.fun";
use "src/m2/filling.sig";
use "src/m2/filling.fun";
use "src/m2/recursion.sig";
use "src/m2/recursion.fun";
use "src/m2/qed.sig";
use "src/m2/qed.fun";
use "src/m2/strategy.sig";
use "src/m2/strategy.fun";
use "src/m2/prover.sig";
use "src/m2/prover.fun";
use "src/m2/mpi.sig";
use "src/m2/mpi.fun";
use "src/m2/skolem.sig";
use "src/m2/skolem.fun";
use "src/m2/m2.sml";
use "src/modules/modsyn.sig";
use "src/modules/modsyn.fun";
use "src/modules/modules.sml";
use "src/heuristic/heuristic.sig";
use "src/heuristic/heuristic.sum.fun";
use "src/meta/global.sig";
use "src/meta/funsyn.sig";
use "src/meta/funsyn.fun";
use "src/meta/statesyn.sig";
use "src/meta/init.sig";
use "src/meta/strategy.sig";
use "src/meta/relfun.sig";
use "src/meta/prover.fun";
use "src/meta/funprint.sig";
use "src/meta/print.sig";
use "src/meta/print.fun";
use "src/meta/filling.sig";
use "src/meta/data.sig";
use "src/meta/splitting.sig";
use "src/meta/recursion.sig";
use "src/meta/inference.sig";
use "src/meta/strategy.fun";
use "src/meta/statesyn.fun";
use "src/meta/funtypecheck.sig";
use "src/meta/uniquesearch.sig";
use "src/meta/inference.fun";
use "src/meta/abstract.sig";
use "src/meta/splitting.fun";
use "src/meta/uniquesearch.fun";
use "src/meta/search.sig";
use "src/meta/search.fun";
use "src/meta/recursion.fun";
use "src/meta/mpi.sig";
use "src/meta/mpi.fun";
use "src/meta/data.fun";
use "src/meta/global.fun";
use "src/meta/filling.fun";
use "src/meta/init.fun";
use "src/meta/abstract.fun";
use "src/meta/funnames.sig";
use "src/meta/funnames.fun";
use "src/meta/funprint.fun";
use "src/meta/weaken.sig";
use "src/meta/weaken.fun";
use "src/meta/funweaken.sig";
use "src/meta/funweaken.fun";
use "src/meta/funtypecheck.fun";
use "src/meta/relfun.fun";
use "src/meta/meta.sml";
use "src/worldcheck/worldsyn.sig";
use "src/worldcheck/worldsyn.fun";
use "src/worldcheck/worldprint.sig";
use "src/worldcheck/worldprint.fun";
use "src/worldcheck/worldcheck.sml";
use "src/cover/cover.sig";
use "src/cover/cover.fun";
use "src/cover/total.sig";
use "src/cover/total.fun";
use "src/cover/cover.sml";
use "src/frontend/mkabsolute.sig";
use "src/frontend/mkabsolute.sml";
use "src/frontend/unknownexn.sig";
use "src/frontend/unknownexn.fun";
use "src/frontend/unknownexn-stub.sml";
use "src/frontend/recon-term.sig";
use "src/frontend/recon-term.fun";
use "src/frontend/recon-condec.sig";
use "src/frontend/recon-condec.fun";
use "src/frontend/recon-query.sig";
use "src/frontend/recon-query.fun";
use "src/frontend/recon-mode.sig";
use "src/frontend/recon-mode.fun";
use "src/frontend/recon-thm.sig";
use "src/frontend/recon-thm.fun";
use "src/frontend/recon-module.sig";
use "src/frontend/recon-module.fun";
use "src/frontend/lexer.sig";
use "src/frontend/lexer.fun";
use "src/frontend/parsing.sig";
use "src/frontend/parsing.fun";
use "src/frontend/parse-term.sig";
use "src/frontend/parse-term.fun";
use "src/frontend/parse-condec.sig";
use "src/frontend/parse-condec.fun";
use "src/frontend/parse-query.sig";
use "src/frontend/parse-query.fun";
use "src/frontend/parse-fixity.sig";
use "src/frontend/parse-fixity.fun";
use "src/frontend/parse-mode.sig";
use "src/frontend/parse-mode.fun";
use "src/frontend/parse-thm.sig";
use "src/frontend/parse-thm.fun";
use "src/frontend/parse-module.sig";
use "src/frontend/parse-module.fun";
use "src/frontend/parser.sig";
use "src/frontend/parser.fun";
use "src/frontend/solve.sig";
use "src/frontend/solve.fun";
use "src/frontend/twelf.sig";
use "src/frontend/twelf.fun";
use "src/frontend/frontend.sml";
