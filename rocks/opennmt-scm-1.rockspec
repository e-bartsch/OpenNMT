package = "opennmt"
version = "scm-1"

source = {
  url = "git://github.com/opennmt/opennmt",
  tag = "master"
}

description = {
  summary = "Neural Machine Translation for Torch",
  homepage = "https://github.com/opennmt/opennmt",
  license = "MIT"
}

dependencies = {
  "nn >= 1.0",
  "nngraph",
  "tds",
  "threads",
  "torch >= 7.0"
}


build = {
  type = "builtin",
  install = {
    bin = {
      onmt_preprocess = "preprocess.lua",
      onmt_train = "train.lua",
      onmt_translate = "translate.lua",
      onmt_tag = "tag.lua"
    }
  },

  modules = {
    onmt = "onmt/init.lua",
    ["onmt.modules.init"] = "onmt/modules/init.lua",
    ["onmt.modules.BiEncoder"] = "onmt/modules/BiEncoder.lua",
    ["onmt.modules.DBiEncoder"] = "onmt/modules/DBiEncoder.lua",
    ["onmt.modules.PDBiEncoder"] = "onmt/modules/PDBiEncoder.lua",
    ["onmt.modules.GoogleEncoder"] = "onmt/modules/GoogleEncoder.lua",
    ["onmt.modules.CNNEncoder"] = "onmt/modules/CNNEncoder.lua",
    ["onmt.modules.Decoder"] = "onmt/modules/Decoder.lua",
    ["onmt.modules.Encoder"] = "onmt/modules/Encoder.lua",
    ["onmt.modules.Network"] = "onmt/modules/Network.lua",
    ["onmt.modules.Bridge"] = "onmt/modules/Bridge.lua",
    ["onmt.modules.FeaturesEmbedding"] = "onmt/modules/FeaturesEmbedding.lua",
    ["onmt.modules.Generator"] = "onmt/modules/Generator.lua",
    ["onmt.modules.NoAttention"] = "onmt/modules/NoAttention.lua",
    ["onmt.modules.GlobalAttention"] = "onmt/modules/GlobalAttention.lua",
    ["onmt.modules.LSTM"] = "onmt/modules/LSTM.lua",
    ["onmt.modules.GRU"] = "onmt/modules/GRU.lua",
    ["onmt.modules.VariationalDropout"] = "onmt/modules/VariationalDropout.lua",
    ["onmt.modules.MaskedSoftmax"] = "onmt/modules/MaskedSoftmax.lua",
    ["onmt.modules.Sequencer"] = "onmt/modules/Sequencer.lua",
    ["onmt.modules.WordEmbedding"] = "onmt/modules/WordEmbedding.lua",
    ["onmt.modules.JoinReplicateTable"] = "onmt/modules/JoinReplicateTable.lua",
    ["onmt.modules.ParallelClassNLLCriterion"] = "onmt/modules/ParallelClassNLLCriterion.lua",
    ["onmt.modules.RIndexLinear"] = "onmt/modules/RIndexLinear.lua",
    ["onmt.data.init"] = "onmt/data/init.lua",
    ["onmt.data.Batch"] = "onmt/data/Batch.lua",
    ["onmt.data.BatchTensor"] = "onmt/data/BatchTensor.lua",
    ["onmt.data.Dataset"] = "onmt/data/Dataset.lua",
    ["onmt.data.Preprocessor"] = "onmt/data/Preprocessor.lua",
    ["onmt.data.Vocabulary"] = "onmt/data/Vocabulary.lua",
    ["onmt.data.AliasMultinomial"] = "onmt/data/AliasMultinomial.lua",
    ["onmt.data.SampledDataset"] = "onmt/data/SampledDataset.lua",
    ["onmt.data.SampledVocabDataset"] = "onmt/data/SampledVocabDataset.lua",
    ["onmt.data.DynamicDataRepository"] = "onmt/data/DynamicDataRepository.lua",
    ["onmt.data.DynamicDataset"] = "onmt/data/DynamicDataset.lua",
    ["onmt.evaluators.Evaluator"] = "onmt/evaluators/Evaluator.lua",
    ["onmt.evaluators.LossEvaluator"] = "onmt/evaluators/LossEvaluator.lua",
    ["onmt.evaluators.PerplexityEvaluator"] = "onmt/evaluators/PerplexityEvaluator.lua",
    ["onmt.evaluators.TranslationEvaluator"] = "onmt/evaluators/TranslationEvaluator.lua",
    ["onmt.evaluators.BLEUEvaluator"] = "onmt/evaluators/BLEUEvaluator.lua",
    ["onmt.evaluators.DLratioEvaluator"] = "onmt/evaluators/DLratioEvaluator.lua",
    ["onmt.train.init"] = "onmt/train/init.lua",
    ["onmt.train.Saver"] = "onmt/train/Saver.lua",
    ["onmt.train.EpochState"] = "onmt/train/EpochState.lua",
    ["onmt.train.Optim"] = "onmt/train/Optim.lua",
    ["onmt.train.Trainer"] = "onmt/train/Trainer.lua",
    ["onmt.translate.init"] = "onmt/translate/init.lua",
    ["onmt.translate.Beam"] = "onmt/translate/Beam.lua",
    ["onmt.translate.Advancer"] = "onmt/translate/Advancer.lua",
    ["onmt.translate.DecoderAdvancer"] = "onmt/translate/DecoderAdvancer.lua",
    ["onmt.translate.BeamSearcher"] = "onmt/translate/BeamSearcher.lua",
    ["onmt.translate.Translator"] = "onmt/translate/Translator.lua",
    ["onmt.translate.PhraseTable"] = "onmt/translate/PhraseTable.lua",
    ["onmt.tagger.init"] = "onmt/tagger/init.lua",
    ["onmt.tagger.Tagger"] = "onmt/tagger/Tagger.lua",
    ["onmt.lm.init"] = "onmt/lm/init.lua",
    ["onmt.lm.LM"] = "onmt/lm/LM.lua",
    ["onmt.utils.init"] = "onmt/utils/init.lua",
    ["onmt.utils.CrayonLogger"] = "onmt/utils/CrayonLogger.lua",
    ["onmt.utils.Cuda"] = "onmt/utils/Cuda.lua",
    ["onmt.utils.Dict"] = "onmt/utils/Dict.lua",
    ["onmt.utils.SubDict"] = "onmt/utils/SubDict.lua",
    ["onmt.utils.Error"] = "onmt/utils/Error.lua",
    ["onmt.utils.Features"] = "onmt/utils/Features.lua",
    ["onmt.utils.Placeholders"] = "onmt/utils/Placeholders.lua",
    ["onmt.utils.FileReader"] = "onmt/utils/FileReader.lua",
    ["onmt.utils.Logger"] = "onmt/utils/Logger.lua",
    ["onmt.utils.Profiler"] = "onmt/utils/Profiler.lua",
    ["onmt.utils.Memory"] = "onmt/utils/Memory.lua",
    ["onmt.utils.MemoryOptimizer"] = "onmt/utils/MemoryOptimizer.lua",
    ["onmt.utils.ExtendedCmdLine"] = "onmt/utils/ExtendedCmdLine.lua",
    ["onmt.utils.Parallel"] = "onmt/utils/Parallel.lua",
    ["onmt.utils.String"] = "onmt/utils/String.lua",
    ["onmt.utils.Table"] = "onmt/utils/Table.lua",
    ["onmt.utils.Tensor"] = "onmt/utils/Tensor.lua",
    ["onmt.Constants"] = "onmt/Constants.lua",
    ["onmt.Factory"] = "onmt/Factory.lua",
    ["onmt.ModelSelector"] = "onmt/ModelSelector.lua",
    ["onmt.LanguageModel"] = "onmt/LanguageModel.lua",
    ["onmt.Seq2Seq"] = "onmt/Seq2Seq.lua",
    ["onmt.SeqTagger"] = "onmt/SeqTagger.lua",
    ["onmt.Model"] = "onmt/Model.lua",
    ["onmt.scorers.init"] = "onmt/scorers/init.lua",
    ["onmt.scorers.bleu"] = "onmt/scorers/bleu.lua",
    ["onmt.scorers.tercom"] = "onmt/scorers/tercom.lua"
  }
}
